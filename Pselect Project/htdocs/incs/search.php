<?php

include ('db.php');

if(isset($_POST['name'])){
    $name = $_POST['name'];
    
    if(empty($name)){
        echo "<div class='label label-primary'>What keyword you looking for?</div>";
    }

    else{
        
        $selectTags = "SELECT id, title FROM jobs WHERE title LIKE '%$name%' LIMIT 8";
        $getTags = mysqli_query($con, $selectTags);
        
        //IF ANY RESULT FOUND, LIST THEM ALL
        if(mysqli_num_rows($getTags) > 0){
        echo '<ul class="list-group">';
            while ($row = mysqli_fetch_array($getTags)){
                $tags = $row['title'];
                $postID = $row['id'];
                $keys = explode (",", $tags);

                
                foreach($keys as $key){
                    echo '
                        <li class="list-group-item"><a href="/jobs.php?pk='.$postID.'">' . $key . '</a></li>
                    ';
                }

            }
            echo "</ul>";
        
        }else{
            echo "<div class='label label-danger'>Sorry No Result Found!</div>";
        }
    }
}
?>