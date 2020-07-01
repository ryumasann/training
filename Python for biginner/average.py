point_list = [75, 80, 93]
total = 0
for point in point_list:
    total += point
point_len = len(point_list)
average = total / point_len
print('合計点は{}, 平均点は{}です'.format(total, round(average)))