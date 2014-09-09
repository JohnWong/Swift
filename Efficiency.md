#Efficiency
分别测试了自增、数组附加的几种情况。采集了100,000、1000,000、1,000,000次循环下的时间消耗，单位为秒，截尾保留5位小数。


##自增

###Swift

```
var i = 0
for index in 1...10000000 {
    i += 1
}
```

| Count		| Cost
|---------:	|:--------
| 100,000  	| 0.01704
| 1000,000	| 0.17276
| 1,000,000	| 1.72903

###Objective-C

```
int i = 0;
for(int i =0; i < 10000000; i++) {
    i++;
}
```

| Count		| Cost
|---------:	|:--------
| 100,000  	| 0.00021
| 1000,000	| 0.00220
| 1,000,000	| 0.02182

##数组附加整型

###Swift

```
var array:[Int] = []
for index in 1...10000000 {
    array.append(1)
}
```
| Count		| Cost
|---------:	|:--------
| 100,000  	| 0.65086
| 1000,000	| 5.94618
| 1,000,000	| 59.56704

###Objective-C

```
NSMutableArray *array = [NSMutableArray new];
for(int i =0; i < 10000000; i++) {
    [array addObject:@1];
}
```
| Count		| Cost
|---------:	|:--------
| 100,000  	| 0.00427
| 1000,000	| 0.04947
| 1,000,000	| 0.42898

##数组附加字符串
###Swift
```
var array:[String] = []
for index in 1...10000000 {
    array.append("1")
}
```

| Count		| Cost
|---------:	|:--------
| 100,000  	| 0.59500
| 1000,000	| 5.91682
| 1,000,000	| 58.06291

###Objective-C

```
NSMutableArray *array = [NSMutableArray new];
for(int i =0; i < 10000000; i++) {
    [array addObject:@"1"];
}
```

| Count		| Cost
|---------:	|:--------
| 100,000  	| 0.00362
| 1000,000	| 0.04445
| 1,000,000	| 0.38629

##字符串拼接
###Swift
```
var string:String = ""
for index in 1...10000000 {
    string += "1"
}
```

| Count		| Cost
|---------:	|:--------
| 100,000  	| 0.04958
| 1000,000	| 0.43942
| 1,000,000	| 4.45237

###Objective-C

```
NSMutableString *string = [NSMutableString new];
for(int i =0; i < 10000000; i++) {
    [string appendString:@"1"];
}
```

| Count		| Cost
|---------:	|:--------
| 100,000  	| 0.00533
| 1000,000	| 0.06501
| 1,000,000	| 0.53922

##排序
###Swift

```
let n = 1000000
var array:[Int] = [Int](count: n, repeatedValue: 0)
for i in 0..<n{
    array[i] = random()
}
sort(&array)
```

| Count		| Assign  	| Sort
|---------:	|:--------	|:--------
| 100,000  	| 0.27816	| 0.44849
| 1000,000	| 2.68700	| 4.85194	
| 1,000,000	| 27.56229	| 53.96336

###Objective-C

```
int n = 10000000;
NSMutableArray *array = [NSMutableArray array];
for (int i=0; i<n; i++){
    array[i] = @(rand());
}
[array sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
    return [obj1 compare:obj2];
}];
```

| Count		| Assign  	| Sort
|---------:	|:--------	|:--------
| 100,000  	| 0.00519	| 0.13258
| 1000,000	| 0.05818	| 1.66713	
| 1,000,000	| 0.47494	| 21.69484



##From WWDC
###Complex object sort
Swift: 3.9×
Objective-C: 2.8×
Python: 1.0×
###RC4 encryption
Swift: 220×
Objection-C: 127×
Python: 1.0×