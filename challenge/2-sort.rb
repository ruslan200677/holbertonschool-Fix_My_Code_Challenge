###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # Пропускаем, если аргумент не является числом
    next unless arg =~ /^-?[0-9]+$/

    # Конвертируем строку в число
    i_arg = arg.to_i

    # Вставляем число в нужное место в массиве
    is_inserted = false
    result.each_with_index do |val, index|
        if i_arg < val
            result.insert(index, i_arg)
            is_inserted = true
            break
        end
    end

    # Если число больше всех, добавляем его в конец массива
    result << i_arg unless is_inserted
end

puts result
