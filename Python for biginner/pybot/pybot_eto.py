def eto_command(command):
    eto, year = command.split()
    eto_num = (int(year) + 8) % 12
    eto_tuple = ('子', '丑', '寅', '卯', '辰', '巳', '午', '未', '申', '酉', '戌', '亥')
    eto_name = eto_tuple[eto_num]
    response = '{}年生まれの干支は「{}」です。'.format(year, eto_name)
    return response