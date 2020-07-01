＃intで型変換可、:は’’の中に入れる。
year = int(input('あなたの生年月日を4桁で記入してください。: '))
eto_num = (year + 8) % 12
#tupleは変更不可、Pythonの配列は異なる方のデータを入れられ、追加削除もできる動的配列。
eto_tuple = ('子', '丑', '寅', '卯', '辰', '巳', '午', '未', '申', '酉', '戌', '亥')
eto_name = eto_tuple[eto_num]
#.formatでprintやstr型にある{}を変換する。
print('あなたの干支は{}です。'.format(eto_name))