year = int(input('あなたの生年月日を4桁で記入してください。: '))
eto_num = (year + 8) % 12
eto_tuple = ('子', '丑', '寅', '卯', '辰', '巳', '午', '未', '申', '酉', '戌', '亥')
eto_name = eto_tuple[eto_num]
print('あなたの干支は{}です。'.format(eto_name))