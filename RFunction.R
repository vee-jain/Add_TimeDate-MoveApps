library('move2')
library('lubridate')
library('dplyr')

rFunction = function(data, time, weekdays, 
                     dd, mm, yyyy, ...) {
  #' Create a data column
  result <- 
    as.data.frame(data) %>% mutate(date = as.Date(timestamp)) %>% relocate(c(date), .after= timestamp)
  #' Add time
  if (time){
    result <- result %>% mutate(time = format(timestamp, format = "%H:%M:%S")) %>%
      relocate(c(time), .after= timestamp)
  }
  #' Add weekday
  if(weekdays){
    result <- result %>% mutate(weekday = factor(weekdays(date), 
                                                 levels = c("Monday", "Tuesday", "Wednesday","Thursday", 
                                                            "Friday", "Saturday", "Sunday"))) %>%
      relocate(c(weekday), .after= timestamp)
  }
  #' Add day in 'dd' format
  if(dd){
    result <- result %>% mutate(dd = format(as.Date(date), "%d")) %>%
      relocate(c(dd), .after= timestamp)
  }
  #' Add month in 'mm' format
  if(mm){
    result <- result %>% mutate(mm = format(as.Date(date), "%m")) %>%
      relocate(c(mm), .after= timestamp)
  }
  #' Add year in 'yyyy' format
  if(yyyy){
    result <- result %>% mutate(yyyy = format(as.Date(date), "%Y")) %>%
      relocate(c(yyyy), .after= timestamp)
  }
  
  #' Export the csv file
  write.csv(result, file = appArtifactPath("data_with_cols.csv"), row.names = FALSE)
  
  # provide my result to the next app in the MoveApps workflow
  return(result)
}

