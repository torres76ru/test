<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="UTF-8" />
	<title>SmirnovA</title>
	<link rel="stylesheet" href="css/style.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
</head>
<body>
	<div class="wrapper">
		<div class="books">
			<p class="books__label">Введите кол-во книг</p>
			<form class="books__form" action="index.php" method="post">
				<input class="input" type="text" name="text" required/>
				<button class="btn" type="submit"><span>Отправить</span></button>
			</form>
			<a href="#books" class="pl-books-link pl"><span>Список книг</span></a>
		</div>
		<div class="sort">
			<div class="sort__title"><strong>Сортировка</strong></div>

			<?php 
				$aTS = array('Диск', 'Клавиатура', 'Флешка', 'Монитор', 'Мышка');
				function sort_func($a,$b)
				{
					if (strlen($a) == strlen($b))
				{
					return 0;
				}
					return (strlen($a) <strlen( $b)) ? -1 : 1;
				}
				function print_arr($array)
				{
					echo "<p>";
					foreach ($array as $key => $v) {
						echo $v." ";
					}
					echo "</p>";
				}
				echo "<p><strong>Исходный массив:</strong><p>";
				$print_arr = 'print_arr';
				$print_arr($aTS);
				usort($aTS, "sort_func");
				echo "<p><strong>По возростанию:</strong><p>";
				$print_arr($aTS);
				$aTS= array_reverse($aTS);
				echo "<p><strong>По убыванию:</strong><p>";
				$print_arr($aTS);
			?>
		</div>
	</div>

	<div class="popup popup-books">
		<div class="popup-table table">
			<div class="cell">
				<div class="popup-content">
					<div class="popup-close"></div>
					<div class="popup__title">Книги</div>
					<div class="popup__txt">
						<?php
							$count = 5;
							$count = (int) $_POST['text'];
							$arr = array('А.С. Пушкин' => 'Руслан и Людмила',
				                  			'Л.Н. Толстой' => 'Война и мир',
				                  			'М.Ю. Лермонтов' => 'Герой нашего времени');
							function print_book($arr, $count){
								$k = 1;
								foreach ($arr as $key => $v) {
									if ($k <= $count){
										echo "<p class=\"books__item\">Роман <em>\"$v\"</em> написал <strong><em> $key</em></strong></p>";
									}
									$k = $k +1;
								}
								while ($k > count($arr) and $k <= $count) {
									echo "<p class=\"books__item\"><em>Книги номер</em> <strong>$k</strong> <em>нет</em></p>";
									$k = $k +1;
								}
							}
							$print_book = 'print_book';
							$print_book($arr, $count);
						?>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/script.js" ></script>
</body>
</html>
