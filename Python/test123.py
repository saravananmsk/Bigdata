import json
print('test')
myjsonfile=open('test1.json','r')
jsondata=myjsonfile.read()

obj=json.loads(jsondata)
print(str(obj['test1']))
