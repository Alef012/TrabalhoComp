import re

data =''
while(data != 'fim'):
    data = input("Digite uma data (dd/mm/aaaa): ")
    padrao = r"^(0[1-9]|1[0-9]|2[0-9]|30)/(0[13-9]|1[0-2])/((19|20)\d\d)$|^(31)/(0[13578]|1[02])/((19|20)\d\d)$|^(29|30)/(02)/((19|20)\d\d)$|^(0[1-9]|1\d|2[0-8])/02/((19|20)\d\d)$
"

    if re.match(padrao, data):
        print("Data válida.")
    else:
        print("Data inválida.")