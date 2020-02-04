<?php
require_once('../admin/header.php');
require_once('../class/movies_class.php');
$result = array();
$task   = isset($_REQUEST['task']) ? ($_REQUEST['task']) : null;
if(class_exists('MoviesCls')){
    $movCls = new MoviesCls();
}
try {
    $data=[];
    $result['success'] = false;
    switch ($task) {
        case 'GetLongestOpeningCrawlMovie':
            $question = $movCls->GetQuestions(1);
            $data = $movCls->GetLongestOpeningCrawlMovie();
            break;
        case 'GetPersonAppearedInMostFilms':
            $question = $movCls->GetQuestions(2);
            $data = $movCls->GetPersonAppearedInMostFilms();
            break;
        case 'GetSpeciesApearedInMostFilms':
            $question = $movCls->GetQuestions(3);
            $data = $movCls->GetSpeciesApearedInMostFilms();
            break;
        case 'GetPlanetWithMoreVehiclePilots':
            $question = $movCls->GetQuestions(4);
            $data = $movCls->GetPlanetWithMoreVehiclePilots();
            break;
    }
    $result['question'] = $question;
    $result['answer'] = $data;
    $result['success'] = ($data)? true: false;
    $result['total']= $movCls->total;
    echo json_encode($result);
    exit();
}
catch (Exception $e) {
    echo '{failure: true}';
}

?>

