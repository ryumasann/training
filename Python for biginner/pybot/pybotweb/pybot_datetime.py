from datetime import date
def weekday_command(command):
    try:
        data = command.split()
        year = int(data[1])
        month = int(data[2])
        day = int(data[3])
        one_day = date(year, month, day)

        weekday_str = '月火水木金土日'
        weekday = weekday_str[one_day.weekday()]

        response = '{}は{}曜日です。'.format(one_day, weekday)
    except IndexError:
        response = '3つの値を指定してください'
    except ValueError:
        response = '正しい日付を指定してください'
    return response