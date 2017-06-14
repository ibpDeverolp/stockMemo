<side_nav_contents>
    <div>
    <h5>カテゴリ一覧</h5>
        <ul style="list-style:none;">
            <li each="{ key in content}" id="{ key[0] }">{ key[1] }</li>
        </ul>
    </div>
    <script>
    // グローバル変数にて本タグ自身を格納
    var self = this;
    
    // サイドナビゲーションに表示するコンテンツ情報をajaxで取得、画面表示を更新する。
    $.getJSON("data/large_category_content.json", function(data){
        content = data
    }).done(function(data){
        var contents = data["large_category_content"]
        self.content = contents;
        self.update();
    });
    </script>
</side_nav_contents>