module ApplicationHelper

  #Возвращает полный заголовок зависящий от страницы.
  def full_title(page_title = '')  # Определение метода
    base_title = "Ruby on Rails Tutorial Sample App" # Назначение переменной
    if page_title.empty? #Булевой тест
      base_title  # Явное возвчращение 
    else
      page_title + " | " + base_title  # Интерполяция строки
    end
  end

end
