## 實習課進度

| 週數   | 日期     | 課程內容                                      | 筆記                    | 原始碼          | 作業          |
|--------|----------|--------------------------------------------|-------------------------|----------------|---------------|
|   1    |  09/12   | [環境安裝、作業繳交說明][s1]                       |                    |                 | [🔗][hw1]     |
|   2    |  09/19   | [RStudio 設定、Basic R、函數、Help pages][s2]     | [🔗][note2]       |   [🔗][src2]    | [🔗][hw2]     |
|   3    |  09/26   | [Base R (I)：vector、資料類型、條件式][s3]         | [🔗][note3]      |    [🔗][src3]    | [🔗][hw3]    |
|   4    |  10/03   | [Base R (II)：list、迴圈、data frame][s4]{:.h}     | [🔗][note4]     |    [🔗][src4]   | [🔗][hw4]     |
|   5    |  10/10   |               國慶日                              |                   |                 |               |
|   6    |  10/17   | [資料清理：`tibble`、`dplyr`][s6]{:.h}             |                   |                 |               |
|   7    |  10/24   | [視覺化：`ggplot2`、`plotly`][s7]{:.h}             |                   |                 |               |
|   8    |  10/31   | [字串處理：正規表達式、`stringr`][s8]{:.h}           |                   |                 |               |
|   9    |  11/07   |               期中考                               |                   |                 |               |
|   10    |  11/14   | [中文文本處理：斷詞、詞頻表、語料庫][s10]{:.h}         |                   |                 |               |
|   11    |  11/21   | [API][s11]{:.h}                                  |                   |                 |               |
|   12    |  11/28   |           Guest Lecture                          |                   |                 |               |
|   13    |  12/05   | [Web 101: HTML/CSS, GitHub Pages][s13]{:.h}      |                   |                 |               |
|   14    |  12/12   | [網頁剖析：`rvest`][s14]{:.h}                      |                   |                 |               |
|   15    |  12/19   |                                                  |                   |                 |               |
|   16    |  12/26   |                                                  |                   |                 |               |
|   17    |  01/02   |                                                  |                   |                 |               |
|   18    |  01/09   |             期末考週                              |                   |                 |               |


<!-- Block 1: Base R -->
[s1]: https://docs.google.com/presentation/d/1wqK0tNB08ccZettohy54OgOdgae77udNeX3-41tm3K0/edit?usp=sharing
[hw1]: https://github.com/rlads2019/hw1

[s2]: https://docs.google.com/presentation/d/1mW5SFnIoHYKxZxNXbEy7XntcMVRDMnHRjk7QeAcAhag/edit?usp=sharing
[note2]: ./notes/02.html
[src2]: ./src/02.zip
[hw2]: https://github.com/rlads2019/hw2

[s3]: https://docs.google.com/presentation/d/1nh2lgojcSJ4Ix4870CYoeMm2mqJuLC7xpMjShHFLEKo/edit?usp=sharing
[note3]: ./notes/03.html
[src3]: ./src/03.zip
[hw3]: https://github.com/rlads2019/hw3

[s4]: https://docs.google.com/presentation/d/152Ge5BW6tw4YQz4n_eyvefyIRaPDZ0Z_25WEOn81XaA/edit?usp=sharing
[note4]: ./notes/04.html
[src4]: ./src/04.zip
[hw4]: https://github.com/rlads2019/hw4

<!-- Block 2：data frame -->
[s6]: https://docs.google.com/presentation/d/1Kr6aUYoVU9HLJh3vZop7K-egp4TytoOWDPQ9HKHLiJM/edit?usp=sharing
[note6]: ./notes/06.html
[src6]: #
[hw6]: #

[s7]: #
[note7]: #
[src7]: #
[hw7]: #

[s8]: #
[note8]: #
[src8]: #
[hw8]: #

<!-- Block 3: 文本處理 -->
[s10]: #
[note10]: #
[src10]: #
[hw10]: #

[s11]: #
[note11]: #
[src11]: #
[hw11]: #

[s13]: #
[note13]: #
[src13]: #
[hw13]: #

[s14]: #
[note14]: #
[src14]: #
[hw14]: #


## 提問注意事項
{: #qa-guide}

每份個人作業在 <https://github.com/rlads2019> 皆會有一個公開的 repo。在做作業時，若遇到問題需要協助，請至每份作業的**公開 repo** 當中的 **Issues** 提問 (而非自己用於上傳作業的 private repo)。提問前請確認自己遵守下列事項：

1. 檢查想問的問題是否已被問過

1. 使用清晰易懂的標題

1. 內文使用 Markdown 語法

    - 程式碼的部份請**務必**使用 [Markdown 的 code chunk 語法](https://help.github.com/en/articles/creating-and-highlighting-code-blocks)：
    
        ````
        ```r
        print('Hello World!')
        # Other R code ...
        ```
        ````

1. 請**勿**將作業裡的程式碼**直接**複製貼上
    - 若被抄襲後果自行負責


<style>
table {
    width: 100%;
    border: 1.6px solid #9c9c9cc9;
    text-align: center;
}
/*
td:nth-child(1), td:nth-child(2), td:nth-child(n+4) {
    text-align: center;
}
tr:nth-child(5), tr:nth-child(9), tr:nth-child(12), tr:nth-child(n+17) {
    text-align: center;
}
*/
#forkme_banner {
    display: none;
}
.h {
    display: none;
}
</style>

<script>
function show() {
    document.querySelectorAll('a.h').forEach(elem => {
        //if (elem.href == 'https://rlads2019.github.io/lab/#') {
            elem.style.display = "inline";
        //}
    });
}
function hide() {
    document.querySelectorAll('a.h').forEach(elem => {
        //if (elem.href == 'https://rlads2019.github.io/lab/#') {
            elem.style.display = "none";
        //}
    });
}

window.addEventListener('load', () => {
    hide();
})
</script>

