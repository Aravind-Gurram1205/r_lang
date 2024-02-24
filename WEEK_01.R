#task-1

u <- 4
v <- 8
u-v
[1] -4
> u+v
[1] 12
> u*v
[1] 32
> u/v
[1] 0.5

#task-2:

u <- c(4, 5, 6)
> v <- c(1, 2, 3)
> 
  > u+v
[1] 5 7 9
> u-v
[1] 3 3 3
> u*v
[1]  4 10 18
> u/v
[1] 4.0 2.5 2.0
u**v
[1]   4  25 216

#task-3:

u <- c(8, 9, 10)
> v <- c(1, 2, 3)
w <- (2 * u + v) / 10
> w
[1] 1.7 2.0 2.3
w <- w + v
> w
[1] 2.7 4.0 5.3
> w <- w / 10
> w
[1] 0.27 0.40 0.53
> w <- (u + 0.5 * v) ^ 2
> w
[1]  72.25 100.00 132.25
w <- (u + 2) * (u - 5) + v
> w
[1] 31 46 63
> w <- (u + 2) / ((u - 5) * v)
> w
[1] 3.333333 1.375000 0.800000

#task-4:

w<- u + v
> w
[1]  9 11 13
> w <- w / 2
> 
  > w
[1] 4.5 5.5 6.5
> w <- w + u
> w
[1] 12.5 14.5 16.5
> w1 <- u^3
> 
  > w
[1] 12.5 14.5 16.5
> w2 <- u - v
> w <- w1 / w2
> w1
[1]  512  729 1000
> w2
[1] 7 7 7
> w
[1]  73.14286 104.14286 142.85714

#data frames

# ex-1:

data <- data.frame(
  +     "Student Name" = c("John", "Alice", "Bob", "Eva"),
  +     "Age" = c(20, 22, 21, 23),
  +     "Weight" = c(70, 65, 75, 60),
  +     "Height" = c(175, 160, 180, 155),
  +     "Sex" = c("Male", "Female", "Male", "Female")
  + )
> data$Sex <- ifelse(data$Sex == "Male", "Female", "Male")
> print(data)
[1]Student.Name Age Weight Height    Sex
1         John  20     70    175 Female
2        Alice  22     65    160   Male
3          Bob  21     75    180 Female
4          Eva  23     60    155   Male

#ex-2:
data <- data.frame(
  +     "Student Name" = c("John", "Alice", "Bob", "Eva"),
  +     "Age" = c(20, 22, 21, 23),
  +     "Weight" = c(70, 65, 75, 60),
  +     "Height" = c(175, 160, 180, 155),
  +     "Sex" = c("Male", "Female", "Male", "Female"),
  +     stringsAsFactors = FALSE  # To ensure 'Sex' is treated as character, not factor
  + )
> 
  >
  > data$Sex <- ifelse(data$Sex == "Male", "Female", "Male")
> 
  > 
  > working_data <- data.frame(
    +     "Working" = c("No", "Yes", "Yes", "No"),
    +     stringsAsFactors = FALSE  # To ensure 'Working' is treated as character, not factor
    + )
> 
  > # Step 4: Combine the two data frames column-wise
  > combined_data <- cbind(data, working_data)
> 
  
  > print(combined_data)
Student.Name Age Weight Height    Sex Working
1         John  20     70    175 Female      No
2        Alice  22     65    160   Male     Yes
3          Bob  21     75    180 Female     Yes
4          Eva  23     60    155   Male      No
> 
  > # a) Number of rows and columns
  > cat("a) Number of rows:", nrow(combined_data), "\n")
a) Number of rows: 4 
> cat("   Number of columns:", ncol(combined_data), "\n")
Number of columns: 6 
> 
  > # b) Class of data in each column
  > cat("b) Class of data in each column:\n")
b) Class of data in each column:
  > print(sapply(combined_data, class))
Student.Name          Age       Weight       Height          Sex      Working 
"character"    "numeric"    "numeric"    "numeric"  "character"  "character" 
> 
  # ex-3:
  
  > class_before <- class(state.center)
> print(paste("Class before conversion:", class_before))
[1] "Class before conversion: list"
> 
  
  > state_center_df <- data.frame(state.center)
> class_after <- class(state_center_df)
> print(paste("Class after conversion:", class_after))
[1] "Class after conversion: data.frame"

# exercise-4:


> vec1 <- c(3, 1, 4, 2)
> vec2 <- c("A", "B", "C", "D")
> vec3 <- c(10, 5, 8, 12)
> 
  > # Create a data frame from the vectors
  > my_data <- data.frame(Column1 = vec1, Column2 = vec2, Column3 = vec3)
> 
  > # Print the original data frame
  > print("Original Data Frame:")
[1] "Original Data Frame:"
> print(my_data)
Column1 Column2 Column3
1       3       A      10
2       1       B       5
3       4       C       8
4       2       D      12
> 
  
  > my_data_ordered <- my_data[order(my_data$Column1), ]
> 
  
  > print("Ordered Data Frame:")
[1] "Ordered Data Frame:"
> print(my_data_ordered)
Column1 Column2 Column3
2       1       B       5
4       2       D      12
1       3       A      10
3       4       C       8
> 
  > 
  #exercise-5:
  
  my_matrix <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = TRUE)
> my_data <- as.data.frame(my_matrix)
> rownames(my_data) <- paste("id", 1:nrow(my_data), sep = "_")
> colnames(my_data) <- paste("variable", 1:ncol(my_data), sep = "_")
> 
  > my_data
variable_1 variable_2 variable_3
id_1          1          2          3
id_2          4          5          6
> 
  #exercise-7:
  state.x77 <- as.data.frame(state.x77)
> 
  
  > states_below_4300 <- sum(state.x77$Income < 4300)
> print(paste("Number of states with income less than 4300:", states_below_4300))
[1] "Number of states with income less than 4300: 20"
> 
  
  > state_highest_income <- state.x77[which.max(state.x77$Income), "State"]
> print(paste("State with the highest income:", state_highest_income))
[1] "State with the highest income: "

#exercise-9:
state_data <- data.frame(abb = state.abb, area = state.area, division = state.division, name = state.name, region = state.region, row.names = state.name)
> 
  > state_data
abb   area           division           name        region
Alabama         AL  51609 East South Central        Alabama         South
Alaska          AK 589757            Pacific         Alaska          West
Arizona         AZ 113909           Mountain        Arizona          West
Arkansas        AR  53104 West South Central       Arkansas         South
California      CA 158693            Pacific     California          West
Colorado        CO 104247           Mountain       Colorado          West
Connecticut     CT   5009        New England    Connecticut     Northeast
Delaware        DE   2057     South Atlantic       Delaware         South
Florida         FL  58560     South Atlantic        Florida         South
Georgia         GA  58876     South Atlantic        Georgia         South
Hawaii          HI   6450            Pacific         Hawaii          West
Idaho           ID  83557           Mountain          Idaho          West
Illinois        IL  56400 East North Central       Illinois North Central
Indiana         IN  36291 East North Central        Indiana North Central
Iowa            IA  56290 West North Central           Iowa North Central
Kansas          KS  82264 West North Central         Kansas North Central
Kentucky        KY  40395 East South Central       Kentucky         South
Louisiana       LA  48523 West South Central      Louisiana         South
Maine           ME  33215        New England          Maine     Northeast
Maryland        MD  10577     South Atlantic       Maryland         South
Massachusetts   MA   8257        New England  Massachusetts     Northeast
Michigan        MI  58216 East North Central       Michigan North Central
Minnesota       MN  84068 West North Central      Minnesota North Central
Mississippi     MS  47716 East South Central    Mississippi         South
Missouri        MO  69686 West North Central       Missouri North Central
Montana         MT 147138           Mountain        Montana          West
Nebraska        NE  77227 West North Central       Nebraska North Central
Nevada          NV 110540           Mountain         Nevada          West
New Hampshire   NH   9304        New England  New Hampshire     Northeast
New Jersey      NJ   7836    Middle Atlantic     New Jersey     Northeast
New Mexico      NM 121666           Mountain     New Mexico          West
New York        NY  49576    Middle Atlantic       New York     Northeast
North Carolina  NC  52586     South Atlantic North Carolina         South
North Dakota    ND  70665 West North Central   North Dakota North Central
Ohio            OH  41222 East North Central           Ohio North Central
Oklahoma        OK  69919 West South Central       Oklahoma         South
Oregon          OR  96981            Pacific         Oregon          West
Pennsylvania    PA  45333    Middle Atlantic   Pennsylvania     Northeast
Rhode Island    RI   1214        New England   Rhode Island     Northeast
South Carolina  SC  31055     South Atlantic South Carolina         South
South Dakota    SD  77047 West North Central   South Dakota North Central
Tennessee       TN  42244 East South Central      Tennessee         South
Texas           TX 267339 West South Central          Texas         South
Utah            UT  84916           Mountain           Utah          West
Vermont         VT   9609        New England        Vermont     Northeast
Virginia        VA  40815     South Atlantic       Virginia         South
Washington      WA  68192            Pacific     Washington          West
West Virginia   WV  24181     South Atlantic  West Virginia         South
Wisconsin       WI  56154 East North Central      Wisconsin North Central
Wyoming         WY  97914           Mountain        Wyoming          West

#Exercise-10:

state_data <- data.frame(abb = state.abb, area = state.area, division = state.division, name = state.name, region = state.region, row.names = state.name)
> 
  > state_data <- cbind(state_data, state.x77)
> state_data <- state_data[, !colnames(state_data) %in% c("div", "Life Exp", "HS Grad", "Frost", "abb", "are")]
> 
  > state_data$Illiteracy_Level <- cut(state_data$Illiteracy, breaks = c(0, 1, 2, Inf), labels = c("low", "some", "high"), right = FALSE)
> 
  > result <- state_data[state_data$region == "West" & state_data$Illiteracy_Level == "low", c("name", "Income")]
> result <- result[which.max(result$Income), ]
> 
  > result
name Income
Nevada Nevada   5149
> state_data
area           division           name        region Population Income Illiteracy Murder   Area
Alabama         51609 East South Central        Alabama         South       3615   3624        2.1   15.1  50708
Alaska         589757            Pacific         Alaska          West        365   6315        1.5   11.3 566432
Arizona        113909           Mountain        Arizona          West       2212   4530        1.8    7.8 113417
Arkansas        53104 West South Central       Arkansas         South       2110   3378        1.9   10.1  51945
California     158693            Pacific     California          West      21198   5114        1.1   10.3 156361
Colorado       104247           Mountain       Colorado          West       2541   4884        0.7    6.8 103766
Connecticut      5009        New England    Connecticut     Northeast       3100   5348        1.1    3.1   4862
Delaware         2057     South Atlantic       Delaware         South        579   4809        0.9    6.2   1982
Florida         58560     South Atlantic        Florida         South       8277   4815        1.3   10.7  54090
Georgia         58876     South Atlantic        Georgia         South       4931   4091        2.0   13.9  58073
Hawaii           6450            Pacific         Hawaii          West        868   4963        1.9    6.2   6425
Idaho           83557           Mountain          Idaho          West        813   4119        0.6    5.3  82677
Illinois        56400 East North Central       Illinois North Central      11197   5107        0.9   10.3  55748
Indiana         36291 East North Central        Indiana North Central       5313   4458        0.7    7.1  36097
Iowa            56290 West North Central           Iowa North Central       2861   4628        0.5    2.3  55941
Kansas          82264 West North Central         Kansas North Central       2280   4669        0.6    4.5  81787
Kentucky        40395 East South Central       Kentucky         South       3387   3712        1.6   10.6  39650
Louisiana       48523 West South Central      Louisiana         South       3806   3545        2.8   13.2  44930
Maine           33215        New England          Maine     Northeast       1058   3694        0.7    2.7  30920
Maryland        10577     South Atlantic       Maryland         South       4122   5299        0.9    8.5   9891
Massachusetts    8257        New England  Massachusetts     Northeast       5814   4755        1.1    3.3   7826
Michigan        58216 East North Central       Michigan North Central       9111   4751        0.9   11.1  56817
Minnesota       84068 West North Central      Minnesota North Central       3921   4675        0.6    2.3  79289
Mississippi     47716 East South Central    Mississippi         South       2341   3098        2.4   12.5  47296
Missouri        69686 West North Central       Missouri North Central       4767   4254        0.8    9.3  68995
Montana        147138           Mountain        Montana          West        746   4347        0.6    5.0 145587
Nebraska        77227 West North Central       Nebraska North Central       1544   4508        0.6    2.9  76483
Nevada         110540           Mountain         Nevada          West        590   5149        0.5   11.5 109889
New Hampshire    9304        New England  New Hampshire     Northeast        812   4281        0.7    3.3   9027
New Jersey       7836    Middle Atlantic     New Jersey     Northeast       7333   5237        1.1    5.2   7521
New Mexico     121666           Mountain     New Mexico          West       1144   3601        2.2    9.7 121412
New York        49576    Middle Atlantic       New York     Northeast      18076   4903        1.4   10.9  47831
North Carolina  52586     South Atlantic North Carolina         South       5441   3875        1.8   11.1  48798
North Dakota    70665 West North Central   North Dakota North Central        637   5087        0.8    1.4  69273
Ohio            41222 East North Central           Ohio North Central      10735   4561        0.8    7.4  40975
Oklahoma        69919 West South Central       Oklahoma         South       2715   3983        1.1    6.4  68782
Oregon          96981            Pacific         Oregon          West       2284   4660        0.6    4.2  96184
Pennsylvania    45333    Middle Atlantic   Pennsylvania     Northeast      11860   4449        1.0    6.1  44966
Rhode Island     1214        New England   Rhode Island     Northeast        931   4558        1.3    2.4   1049
South Carolina  31055     South Atlantic South Carolina         South       2816   3635        2.3   11.6  30225
South Dakota    77047 West North Central   South Dakota North Central        681   4167        0.5    1.7  75955
Tennessee       42244 East South Central      Tennessee         South       4173   3821        1.7   11.0  41328
Texas          267339 West South Central          Texas         South      12237   4188        2.2   12.2 262134
Utah            84916           Mountain           Utah          West       1203   4022        0.6    4.5  82096
Vermont          9609        New England        Vermont     Northeast        472   3907        0.6    5.5   9267
Virginia        40815     South Atlantic       Virginia         South       4981   4701        1.4    9.5  39780
Washington      68192            Pacific     Washington          West       3559   4864        0.6    4.3  66570
West Virginia   24181     South Atlantic  West Virginia         South       1799   3617        1.4    6.7  24070
Wisconsin       56154 East North Central      Wisconsin North Central       4589   4468        0.7    3.0  54464
Wyoming         97914           Mountain        Wyoming          West        376   4566        0.6    6.9  97203
Illiteracy_Level
Alabama                    high
Alaska                     some
Arizona                    some
Arkansas                   some
California                 some
Colorado                    low
Connecticut                some
Delaware                    low
Florida                    some
Georgia                    high
Hawaii                     some
Idaho                       low
Illinois                    low
Indiana                     low
Iowa                        low
Kansas                      low
Kentucky                   some
Louisiana                  high
Maine                       low
Maryland                    low
Massachusetts              some
Michigan                    low
Minnesota                   low
Mississippi                high
Missouri                    low
Montana                     low
Nebraska                    low
Nevada                      low
New Hampshire               low
New Jersey                 some
New Mexico                 high
New York                   some
North Carolina             some
North Dakota                low
Ohio                        low
Oklahoma                   some
Oregon                      low
Pennsylvania               some
Rhode Island               some
South Carolina             high
South Dakota                low
Tennessee                  some
Texas                      high
Utah                        low
Vermont                     low
Virginia                   some
Washington                  low
West Virginia              some
Wisconsin                   low
Wyoming                     low
> 
  
  