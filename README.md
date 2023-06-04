<p align="center">
<img height="256" src="https://github.com/kzhiquan/Picsee/blob/master/logo.png" />
</p>

<h1 align="center">Picsee</h1>

<p align="center">Picsee is the <b>modern</b> image viewer and organizer for macOS.</p>

<p align=center>
<a href="https://enpicsee.chitaner.com">Website</a> ·
<a href="https://t.me/joinchat/LLvGKBYvdMtz6z7SgYxJUQ">Telegram Group</a>
</p>

---


## Contributing
Picsee is looking for contributions! You can report bugs, new issues and do translation here. 


## Translation
Until now, Picsee has four languages localized, they are English, Japanese, Chinese Simplified, Chinese Traditional. I think the Chinese localization is ok but the others are poor. You can make them better and, what is more, you can localize Picsee for any other language.

### How to localize
There are Main, Album, PPSee, PPEdit, PPSnip, PPBar, PPDraw, PPCommon, PPExport, PPExportAuth, PPExportBusiness and PPExportUserBusiness modules which you can find in the **translation** folder. In every module folder there are en.lproj, ja.lproj, zh-Hans.lproj and zh-Hant.lproj folders which are the localization folders for each language. You can create a new folder within each module for a new language. In each language folder, there are Localizable.strings files and these are where the translation should take place. The format is as follows:


```
// 删除
"album_bar_delete" = "Delete";

// 入口
"album_bar_entry" = "Access";

// 导出
"album_bar_export" = "Export";


......

```

This is a piece of English localization code. In this example, "album_bar_delete" is the key, "Delete" is the value and "//删除" is the Chinese translation. If you think a value is wrong, you can update it and make a pull request. For a new language, you would need to create the Localizable.strings file within a new language folder under each module and then translate all of the keys. 