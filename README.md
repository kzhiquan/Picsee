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
Picsee is looking for contributions, you can report bugs, new issues and do translation here. 


## Translation
Until now, Picsee have four languanges localized, they are English, Japanese, Chinese Simplified, Chinese Traditional. I think the Chinese localization is ok, but the others are poor. you can make them better, and what is more, you can localize Picsee for any other languages.

### How to localize
Now, there are Main, Album, PPSee, PPEdit, PPSnip, PPBar, PPDraw, PPCommon, PPExport, PPExportAuth, PPExportBusiness, PPExportUserBusiness modules, you can find them in **traslation** folder. In every module folder, there are en.lproj, ja.lproj, zh-Hans.lproj, zh-Hant.lproj folders, each one is the language localization for the module. You can create a new folder for a new language. In language folder, there are Localizable.strings files, which are the place do translation. The format are as follow:


```
// 删除
"album_bar_delete" = "Delete";

// 入口
"album_bar_entry" = "Access";

// 导出
"album_bar_export" = "Export";


......

```

This is a piece of English localization code, for example, "album_bar_delete" is key, "Delete" is value, //删除 is chinese translation for the value. If you think the value is wrong, you can update it and make a pull request. For new language, you must create the Localizable.string file, and translate for every keys. 



