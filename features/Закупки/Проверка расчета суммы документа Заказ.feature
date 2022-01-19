﻿#language: ru


Функционал: Автоматический расчет поля Сумма документа Заказы

Как Менеджер по закупкам я хочу
получать автоматический расчет поля Сумма документа Заказы
чтобы исключить вероятность ошибки при заполнеии вручную


Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: 
*Открытие формы документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
*Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Мосхлеб ОАО'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
*Заполнение Табличной части 
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Торт '
*Проверка расчета Суммы
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '100,00'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда таблица "Товары" стала равной:
			| 'N' | 'Товар' |  'Цена'   | 'Количество' | 'Сумма'    |
			| '1' | 'Торт ' |  '100,00' | '1,00'      | '100,00' |
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда таблица "Товары" стала равной:
			| 'N' | 'Товар' |  'Цена'   | 'Количество' | 'Сумма'    |
			| '1' | 'Торт ' |  '100,00' | '2,00'      | '200,00' |
	И Я закрываю окно 'Заказ (создание) *'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button1'

