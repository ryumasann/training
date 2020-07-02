from pybot_eto import eto_command

def heisei_command(command):
    heisei, year_str = command.split()
    year = int(year_str)
    if year >= 1989:
        heisei_year = year - 1988
        response = '西暦{}は、平成{}年です。'.format(year, heisei_year)
    else:
        response = '西暦は{}平成ではありません。'.format(year)
    return response

#import os
#dic_path= os.path.dirname(__file__) + 'pybot.txt'
command_file = open('pybot.txt', encoding='utf-8')
raw_data = command_file.read()
command_file.close()
lines = raw_data.splitlines()

bot_dict = {}
for line in lines:
    word_list = line.split(',')
    key = word_list[0]
    response = word_list[1]
    bot_dict[key] = response
    
while True:
    command = input('pybot> ')
    response = ''
    for key in bot_dict:
        if key in command:
            response = bot_dict[key]
            break
    
    if '平成' in command:
        response = heisei_command(command)
    if '干支' in command:
        response = eto_command(command)
    
    if not response:
        response = '何言ってるかわからない'
    print(response)

    if "さようなら" in command:
        break