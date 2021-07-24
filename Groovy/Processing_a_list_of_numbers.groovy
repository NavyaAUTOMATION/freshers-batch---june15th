package com.test.assignments

def num=[86,54,32,558,63]
def sum=0
def sum1=0
println num
for(i=0; i<5; i++) {
	sum=sum+num[i]
}
println "Add all numbers: "+sum

for(i=0; i<5; i++) {
	sum1=sum1+(num[i]*num[i])
}
println "Double and add: "+sum1

def avg1=sum/7
def avg2=sum1/7

println "Average of numbers: "+avg1
println "Average of double numbers: "+avg2

