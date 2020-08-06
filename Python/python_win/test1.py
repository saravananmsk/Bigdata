import json
myjsonfile=open('C:/Users/HP/PycharmProjects/Python/venv/Scripts/test.json','r')
jsondata=myjsonfile.read()

obj=json.loads(jsondata)
print(str(obj['test1']))