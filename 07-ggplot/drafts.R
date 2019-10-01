library(ggplot2)

ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy)) +
    # split data into subsets by variable(s) and wraps each subset into a subplot (usuall one variable)
    facet_wrap(vars(class, cyl))
    # split data into subsets by variable(s) and wraps each subset into a subplot (usuall two variable)
    #facet_grid(rows = vars(class), cols = vars(cyl))

ggplot(data = mpg) +
    #geom_freqpoly(aes(hwy, color = drv), binwidth = 2)
    geom_histogram(mapping = aes(x = hwy, fill = drv), binwidth = 2)
