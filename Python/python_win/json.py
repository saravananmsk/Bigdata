import json
myjsonfile=open('test.json','r')
jsondata=myjsonfile.read()

obj=json.loads(jsondata)
print(str(obj['test1']))