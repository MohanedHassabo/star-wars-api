<?php

class MoviesCls
{
    var $total;
    function MoviesCls()
    {
        $this->total = 0;
    }

    //Question 1 Answer
    //Get Star Wars movie has the longest opening crawl
    function GetLongestOpeningCrawlMovie()
    {
        global $conn;
        //$sql = "Call spM_SW_GetLongestOpeningCrawlMovie();";
        $sql = "SELECT fm.id, fm.title AS `name`, COUNT(DISTINCT people_id) AS no_of_characters, LENGTH(TRIM(opening_crawl)) AS len 
		FROM films fm
		LEFT JOIN films_characters fc ON fm.id = fc.film_id
		GROUP BY fm.id ORDER BY len DESC LIMIT 1;";
        $arr = $conn->getArray($sql);
        return $arr;
    }

    //Question 2 Answer
    //Persons appeared in most of the Star Wars films
    function GetPersonAppearedInMostFilms()
    {
        global $conn;
        //$sql = "Call spM_SW_GetPersonAppearedInMostFilms();";
        $sql ="SELECT pp.id, pp.name, COUNT(DISTINCT fc.film_id) AS no_of_film 
		FROM `people` pp 
		LEFT JOIN films_characters fc ON pp.id = fc.people_id
		GROUP BY pp.id HAVING no_of_film=6 ORDER BY no_of_film DESC, pp.id;";
        $arr = $conn->getArray($sql);
        return $arr;
    }

    //Question 3 Answer
    //species appeared in the most number of Star Wars films
    function GetSpeciesApearedInMostFilms()
    {
        global $conn;
        //$sql = "Call spM_SW_GetSpeciesApearedInMostFilms();";
        $sql ="SELECT sp.id, sp.name, COUNT(people_id) AS no_of_characters, COUNT(DISTINCT fc.film_id) AS no_of_film 
		FROM species sp
		INNER JOIN films_species fs ON sp.id = fs.species_id
		LEFT JOIN films_characters fc ON fs.film_id = fc.film_id
		GROUP BY sp.id HAVING no_of_film=6 ORDER BY no_of_characters DESC;";
        $arr = $conn->getArray($sql);
        return $arr;
    }

    //Question 4 Answer
    //Get Planet in Star Wars universe provided largest number of vehicle pilots
    function GetPlanetWithMoreVehiclePilots()
    {
        global $conn;
        //$sql = "Call spM_SW_GetPlanetWithMoreVehiclePilots();";
        $sql = "SELECT pt.id, pt.name, COUNT(*) AS no_of_pilots, GROUP_CONCAT(vpd.fulldesc SEPARATOR ', ') AS pilots
        FROM `planets` pt
        LEFT JOIN (
            SELECT pp.id, pp.`name`, CONCAT(pp.`name`, ' - ', IFNULL(sp.`name`, 'n/a')) AS fulldesc, pp.`homeworld`, IFNULL(sp.`name`, 'n/a') AS species 
            FROM people pp
            INNER JOIN vehicles_pilots vp ON pp.id= vp.people_id
            LEFT JOIN species sp ON sp.homeworld = pp.homeworld
            GROUP BY pp.id, pp.homeworld
        ) vpd ON pt.id = vpd.homeworld 
        GROUP BY pt.id ORDER BY no_of_pilots DESC LIMIT 1;";
        $arr = $conn->getArray($sql);
        return $arr;
    }

    function GetQuestions($taskNo)
    {
        switch ($taskNo) {
            case 1:
                $question = "Which of all StarWars movies has the longest opening crawl?";
                break;
            case 2:
                $question = "What character (person) appeared in most of the Star Wars films?";
                break;
            case 3:
                $question = "What species appeared in the most number of Star Wars films?";
                break;
            case 4:
                $question = "What Planet in StarWars universe provided largest number of vehicle pilots?";
                break;
            default:
                $question="";
        }
        return $question;
    }
}

?>