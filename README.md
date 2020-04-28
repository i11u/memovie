# assignment
プロジェクト名：Memovie（メモビー）
モデル"Article"を作成し，タイトル(title)，場所(theater)，日時(watched_date)，評価(rate)，コメント(text)に値を格納。データはEdit, Destroy, Show機能で操作。星評価はjavascriptのライブラリで実装。デザインはBootStrap。

4/18に星評価機能，BootStrapが使用できていましたが，何かしらまずかったのか4/19の朝からずっと500 Internal server errorを吐き続ける。

4/24にフィードバックでもらったアドバイスを受けて500 Internal server error解決。manifest.js内で存在しないディレクトリを読んでいたことが原因だった模様。

4/25にBootStrapでデザイン変更。Gitにコミット，プッシュした際にGithub上でmemovieディレクトリが見れなくなるエラーに陥ったためネット記事を見て対処しようとするが，泥沼にはまったのでリモートレポジトリを削除，新規作成した。（後にエラーは解消。memovieがsubmoduleになっていたらしく，submodule init&updateで解決。）

4/26に検索機能追加。articles/index.html.erbに検索ボックスを設置し，検索ワードがタイトルに合致するとsearch.html.erbに飛んで検索結果を表示する。

4/27に日時のFormatを変更（参照：https://qiita.com/jnchito/items/831654253fb8a958ec25）。
検索ワードがタイトル，劇場，日時のいずれかに合致すると検索結果を表示するようにmodels/artcile.rbを変更（参照：https://qiita.com/bSRATulen2N90kL/items/6a7c99bf3641ac6838fb）。
また，テスト機能を設定完了。
