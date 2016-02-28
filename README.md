# plext_test
このリポジトリは，pLaTeX 拡張パッケージ plext.sty の挙動を改善する私案を置いたものです．
現在は，array, tabular 環境
~~や \parbox命令の垂直位置~~（追従できていません）について検討しています．

 * 現在の改善案 (plext-beta.sty) における表組・\parbox 命令の垂直位置（基本）
   * 周囲の組方向が横組，あるいは縦数式ディレクションの場合は，plext.sty
     非読み込み時のように
     * \[t] 指定のときは，一行目のベースラインが周囲のそれと一致（罫線は欧文ベースラインの位置）
     * \[c] 指定のときは，中心が数式の軸を通る
     * \[b] 指定のときは，最終行のベースラインが周囲のそれと一致（罫線は欧文ベースラインの位置）
   * 周囲の組方向が縦組の場合，和文ベースラインを基準にする
     * \[t] 指定のときは，一行目のベースラインが周囲のそれと一致（罫線は和文ベースラインの位置）
     * \[c] 指定のときは，中心が周囲の和文ベースラインを通る
     * \[b] 指定のときは，最終行のベースラインが周囲のそれと一致（罫線は和文ベースラインの位置）
 * 例外
   * 周囲が縦組かつ組方向が <z> 指定の場合は，周囲が横組の場合と一致させる：
     * \[t] 指定のときは，一行目のベースラインが周囲のそれと一致（罫線は欧文ベースラインの位置）
     * \[c] 指定のときは，中心が数式の軸を通る
     * \[b] 指定のときは，最終行のベースラインが周囲のそれと一致（罫線は欧文ベースラインの位置）
   
 * 論点
   * 周囲が縦数式ディレクションかつ組方向が <t> 指定の場合，罫線の有無によって垂直位置がずれる．
     例えば \[t] 指定の場合，先頭が罫線だった場合に罫線を欧文ベースラインに揃えようとすれば，
     先頭行が罫線でなかった場合には欧文が `\tbaselineshift` だけ左にずれる．
     
   * 上記の問題は，周囲が横数式ディレクションかつ組方向が <y>, <z> 指定のときも起こる．
     この場合，欧文が `\ybaselineshift` だけ上にずれてしまう，
