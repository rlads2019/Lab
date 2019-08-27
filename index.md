
## 實習課進度

| 週數   | 日期     | 課程內容                                    | 筆記        | 原始碼     | 作業      |
|--------|----------|---------------------------------------------|-------------|------------|-----------|
|   1    |  09/12   | [環境安裝、作業繳交說明][s1]                |             |            | [🔗][hw1] |
|   2    |  09/19   | [熟悉 RStudio、尋求幫助、very basic R][s2]  |             |            |           |
|   3    |  09/26   | [vector、資料類型、條件式][s3]              | [🔗][note3] | [🔗][src3] |           |
|   4    |  10/03   | [list、迴圈、函數][s4]                      |             |            |           |
|   5    |  10/10   |            國慶日                           |             |            |           |
|   6    |  10/17   | [資料清理：`tibble`、`dplyr`]               |             |            |           |
|   7    |  10/24   | [視覺化：`ggplot2`、`plotly`]               |             |            |           |
|   8    |  10/31   | [字串處理：正規表達式、`stringr`]           |             |            |           |
|   9    |  11/07   |            期中考                           |             |            |           |

[s1]: https://example.com

[note3]: ./notes/01.html

[src3]: ./src/01.zip

[hw1]: https://github.com/rlads2019/_hw-demo


## GitHub Issues 使用說明 {:
d= "QA-qaide"}

每份個人作業在 <https://github.com/rlads2019> 皆會有一個公開的 repo。在做作業時，若遇到問題需要協助，請至每份作業的**公開 repo** 當中的 **Issues** 提問 (而非自己用於上傳作業的 private repo)。提問前請確認自己遵守下列事項：

- 檢查想問的問題是否已被問過

- 使用清晰易懂的標題

- 內文使用 Markdown 語法
    - 程式碼的部份請**務必**使用 [Markdown 的 code chunk 語法](https://help.github.com/en/articles/creating-and-highlighting-code-blocks)：
    
    ````
    ```r
    print('Hello World!')
    # Other R code ...
    ```
    ````

- 請**勿**將作業裡的程式碼**直接**複製貼上
    1. 若被抄襲後果自行負責
    1. 應先嘗試找出問題的癥結點，而不是把程式碼直接丟給助教 debug
