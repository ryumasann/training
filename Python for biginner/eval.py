point = input('点数をカンマ区切りで入力してください: ')
point_list = point.split(',')
total = 0

for pt in point_list:
    total += int(pt)

point_len = len(point_list)
#set base point
excellent = point_len * 100 * 0.8
good = point_len * 100 * 0.65
if total >= excellent:
    evaluation = 'Excellent'
elif total >= good:
    evaluation = 'Good'
else:
    evaluation = 'Bad'

print('点数の評価は{}です。'.format(evaluation))
