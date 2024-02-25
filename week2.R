excel sheet
head(Ice_Cream_Sales_temperatures)
# A tibble: 6 × 2
Temperature `Ice Cream Profits`
<dbl>               <dbl>
  1          39                13.2
2          40                11.9
3          41                18.8
4          42                18.6
5          43                17.0
6          43                15.9
> tail(Ice_Cream_Sales_temperatures)
# A tibble: 6 × 2
Temperature `Ice Cream Profits`
<dbl>               <dbl>
  1          98                84.1
2          99                85.1
3          99                87.1
4          99                89.3
5         101                81.9
6         101                85.0
csv:
  data=read.csv(file.choose(),header=TRUE)
head(data)
Temperature Ice.Cream.Profits
1          39             13.17
2          40             11.88
3          41             18.82
4          42             18.65
5          43             17.02
6          43             15.88
> tail(data)
Temperature Ice.Cream.Profits
360          98             84.12
361          99             85.13
362          99             87.08
363          99             89.29
364         101             81.91
365         101             85.02
