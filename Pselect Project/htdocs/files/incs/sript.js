//SEARCH ENGINE AJAX
$('#key').keyup(function(){

    var name = $('#key').val();
    $.post('/files/incs/search.php', {name:name}, function(data){
        $('#searchResult').html(data);    
    });
});