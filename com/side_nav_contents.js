riot.tag2('side_nav_contents', '<div> <h5>カテゴリ一覧</h5> <ul style="list-style:none;"> <li each="{key in content}" id="{key[0]}">{key[1]}</li> </ul> </div>', '', '', function(opts) {

    var self = this;

    $.getJSON("data/large_category_content.json", function(data){
        content = data
    }).done(function(data){
        var contents = data["large_category_content"]
        self.content = contents;
        self.update();
    });
});