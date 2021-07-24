package com.test.assignments

String uname = "Devops"
String password = "Groovy"
List end=[]
String str = "${uname} : ${password}"
byte[] byt = str.getBytes()
def enc = byt.encodeBase64().toString()
println "Encoded string: " + byt
byte[] dec = enc.decodeBase64()
def res =  new String(dec)
end = res.split(':')
println end

