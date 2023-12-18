<h2>Принятые заявки:</h2>
<?php foreach ($goodstatus as $application):?>
    <div class="card mt-3">
        <div class="card-body">
            <p>Номер заявки: <?php echo $application->id . '<br>';?></p>
            <p>Дата: <?php echo $application->email . '<br>';?></p>
            <p>Статус: <?php echo $application->getStatus() . '<br>';?></p>
            <p>Дата: <?php echo $application->date . '<br>';?></p>
        </div>
    </div>

<?php endforeach;?>

<h2 class="mt-5">Отклоненные заявки:</h2>
<?php foreach ($badstatus as $application):?>
    <div class="card mt-3">
        <div class="card-body">
            <p>Номер заявки: <?php echo $application->id . '<br>';?></p>
            <p>Дата: <?php echo $application->email . '<br>';?></p>
            <p>Статус: <?php echo $application->getStatus() . '<br>';?></p>
            <p>Дата: <?php echo $application->date . '<br>';?></p>
        </div>
    </div>

<?php endforeach;?>
