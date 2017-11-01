#load library
library(tidyverse)

#load data
dat <- read.csv(url("http://esapubs.org/archive/ecol/E084/093/Mammal_lifehistories_v2.txt"), 
                sep = "\t", nrows = 1440, na.strings = c("-999.00", "999.00"))

#rest of your code goes here
View(dat)

#3.1
ggplot(dat) + geom_point(mapping = aes(x=mass.g., y = newborn.g.)) + 
  labs(x = "Adult Mass", y =  "Newborn Mass")

#3.2
ggplot(dat) + geom_point(mapping = aes(x=mass.g., y = newborn.g.)) + 
  labs(x = "Log (Adult Mass)", y =  "Log (Newborn Mass)") + scale_y_log10() + scale_x_log10()

#3.3
ggplot(dat) + geom_point(mapping = aes(x=mass.g., y = newborn.g., color = order)) + 
  labs(x = "Log (Adult Mass)", y =  "Log (Newborn Mass)") + scale_y_log10() + scale_x_log10()

#3.4
ggplot(dat) + geom_point(mapping = aes(x=mass.g., y = newborn.g.)) + 
  labs(x = "Log (Adult Mass)", y =  "Log (Newborn Mass)") + scale_y_log10() + scale_x_log10() + facet_wrap(~ order)

#3.5
ggplot(data=dat, aes(x=mass.g., y = newborn.g.)) + geom_point() + geom_smooth() +
  labs(x = "Log (Adult Mass)", y =  "Log (Newborn Mass)") + scale_y_log10() + scale_x_log10() + facet_wrap(~ order)
