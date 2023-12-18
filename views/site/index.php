<?php

/** @var yii\web\View $this */
use app\models\Schedule;
use yii\helpers\Url;
use yii\bootstrap5\LinkPager;

$this->title = 'My Yii Application';
?>
<!-- Background image -->
<div class="container">
    <div class="row">
            <div class="col-6">
                <div class="p-5">
                    <h2>Лучший зоопарк «ZooOnline»</h2>
                    <h4>Мы рады видеть Вас на сайте нашей компании! Пусть знакомство с нами будет информативным, познавательным и интересным. Здесь вы можете получить всю необходимую информацию! Вы можете онлайн переобрести билеты в разделе"Билеты" </h4>
                    <a href="<?php echo Url::toRoute(['site/application']); ?>"
                       class="btn btn-info btn-success">БИЛЕТЫ</a>
                </div>
            </div>
            <div class="col-3">
                <img src="../web/image/231313123.png" style="width: 800px">
        </div>
    </div>
    <div class="bg-image"
         style="background-image: url('../web/image/pro.png');
            width: 1300px; height: 800px;">
        <div class="text-center p-5">
            <h2 class="text-white">О работе зоопарка</h2>
        </div>
        <div class="text-center">
            <div class="row row-cols-1 row-cols-md-3 g-4">
                <div class="col">
                        <img src="../web/image/1.png" class="card-img-top" style="width: 150px">
                        <div class="card-body">
                            <h5 class="text-white">Заголовок карточки</h5>
                            <p class="text-white">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
                        </div>
                </div>
                <div class="col">
                        <img src="../web/image/2.png" class="card-img-top" style="width: 150px">
                        <div class="card-body">
                            <h5 class="text-white">Заголовок карточки</h5>
                            <p class="text-white">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
                        </div>
                </div>
                <div class="col">
                        <img src="../web/image/3.png" class="card-img-top" style="width: 150px">
                        <div class="card-body">
                            <h5 class="text-white">Заголовок карточки</h5>
                            <p class="text-white">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
                        </div>
                </div>
                <div class="col">
                        <img src="../web/image/4.png" class="card-img-top" style="width: 150px">
                        <div class="card-body">
                            <h5 class="text-white">Заголовок карточки</h5>
                            <p class="text-white">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
                        </div>
                </div>
                <div class="col">
                        <img src="../web/image/5.png" class="card-img-top" style="width: 150px">
                        <div class="card-body">
                            <h5 class="text-white">Заголовок карточки</h5>
                            <p class="text-white">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
                        </div>
                 </div>
                    <div class="col">
                            <img src="../web/image/6.png" class="card-img-top" style="width: 150px">
                            <div class="card-body">
                                <h5 class="text-white">Заголовок карточки</h5>
                                <p class="text-white">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="p-5">
        <div class="text-center">
            <h2 class="text">Наши друзья</h2>
            <h4>Здесь вы можете ознакомится с животными, которые находяться в нашей компании</h4>
            <div class="bg-lime  p-2 text-dark bg-opacity">
                <div class="container">
                    <div class="row row-cols-1 row-cols-md-3 g-4">
                        <? foreach ($categories as $category): ?>
                            <div class="col text-center">
                                <div class="card">
                                    <img src="../web/image/<?php echo $category['image']; ?>" class="card-img-top"
                                         style="height: 290px;" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title "><?php echo $category['name']; ?></h5>
                                        <h6 class="card-title "><?php echo $category['body']; ?></h6>
                                        <a href="<?php echo Url::toRoute(['site/contact', 'id' => $category['id']]); ?>"
                                           class="btn btn-info btn-success">Подробнее</a>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                    <div class="h-100 d-flex align-items-center justify-content-center mt-5">
                        <?php echo LinkPager::widget([
                            'pagination' => $pages,]);?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="p-5">
        <div class="text-center">
            <h2 class="text">Информация о нас </h2>
            <div class="bg-image"
                 style="background-image: url('../web/image/pro.png');
            height: 600px;">
                <div class="text-center p-5">
                    <div class="card" style="width: 1100px; height: 468px;">
                        <div class="row">
                            <div class="col-md-8">
                                <img src="../web/image/zooont.jpeg" class="img-fluid rounded-start" style="width: 700px">
                            </div>
                            <div class="col-4">
                                <div class="card-body">
                                    <p class="card-text">Зоопарка Кургана предстал во всей красоте перед посетителями 10 сентября 2008 года. Деревянные постройки, живописные уютные зоны отдыха, скамейки, пруд, мельницы, цветущие газоны – казалось, что может быть еще прекраснее. Главными виновниками торжества стали 92 обитателя зоопарка, всего 32 вида, доселе невиданных нашей республике: белый медведи, моржи, полярная сова, японские мартышки, рысь... От красоты и восторга  у посетителей захватывало дух.  Животные заметно нервничали, такого наплыва гостей не ожидал  никто – около 30000 посетителей в первый день работы! </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="p-5">
        <div class="text-center">
            <h2 class="text">Режим работы зоопарка</h2>
        </div>
        <div class="text-center">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">День недели</th>
                    <th scope="col">Время</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <?php foreach ($schedules as $schedule): ?>
                    <td><p><?php echo $schedule['date'] ?><br></td>
                    <td><?php echo $schedule['time'] ?></td>
                </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

