# [@moe_sticker_bot](https://t.me/moe_sticker_bot)
A Telegram bot doing sticker stuffs, it imports LINE and kakaotalk sticker set to Telegram, downloads stickers, creates and manages Telegram sticker set. 

Telegram用萌萌貼圖BOT, 可以匯入LINE和kakaotalk貼圖包到Telegram, 可以下載貼圖包, 可以創建和管理Telegram貼圖包.

## Features/功能
  * Import LINE or kakao stickers to Telegram without effort, you can batch or separately assign emojis.
  * Batch download and convert Telegram stickers or GIFs to original or common formats.
  * Export Telegram stickers to WhatsApp (requires [Msb App](https://github.com/star-39/msb_app)).
  * Create your own sticker set with your own images or videos in any format.
  * Manage your sticker set interactively through WebApp: add/move/remove/edit sticker and emoji.
  * Top class performance with simultaneous execution to save your time.

  * 輕鬆匯入LINE/kakao貼圖包到Telegram, 可以統一或分開指定emoji.
  * 下載Telegram/LINE/kakao貼圖包和GIF, 自動變換為常用格式, 並且保留原檔.
  * 匯出Telegram的貼圖包至WhatsApp（需要安裝[Msb App](https://github.com/star-39/msb_app))。
  * 輕鬆使用自己任意格式的圖片和影片來創建自己的貼圖包.
  * 互動式WebApp可以輕鬆管理自己的貼圖包: 可以新增/刪除貼圖, 移動位置或修改emoji.
  * 擁有超高處理速度, 節省您的時間. 
  
## For Developers/開發者資訊
  * A standalone package and CLI for downloading LINE/kakao stickers is provided. Please go to [pkg/msbimport](https://github.com/star-39/moe-sticker-bot/tree/master/pkg/msbimport) for details.
  * An iOS/Android app handling WhatsApp sticker export is available: [Msb App](https://github.com/star-39/msb_app).
  * 現已提供單獨用於下載LINE/kakao貼圖包的套件和獨立的終端機程式，請前往[pkg/msbimport](https://github.com/star-39/moe-sticker-bot/tree/master/pkg/msbimport)詳閱。
  * 用於匯出WhatsApp貼圖包的iOS/Android App位於：[Msb App](https://github.com/star-39/msb_app)

## Screenshots
[@moe_sticker_bot](https://t.me/moe_sticker_bot)
<!-- ![スクリーンショット 2022-02-12 003746](https://user-images.githubusercontent.com/75669297/153621406-16a619a8-e897-4857-947b-7d41e88fddcb.png) 
<img width="511" alt="スクリーンショット 2022-03-24 19 58 09" src="https://user-images.githubusercontent.com/75669297/159902095-fefbcbbf-1c5e-4c3e-9e55-eb28b48567e0.png"> -->

<!--<img width="500" alt="スクリーンショット 2022-05-11 19 33 27" src="https://user-images.githubusercontent.com/75669297/167830628-1dfc9941-4b3c-408d-bf64-1ef814e3efe8.png"> <img width="500" alt="スクリーンショット 2022-05-11 19 51 46" src="https://user-images.githubusercontent.com/75669297/167833015-806b4f11-ecd9-4f10-9b9c-ecb7a20f8f97.png">-->
<!-- 
<img width="500" alt="スクリーンショット 2022-05-11 19 58 52" src="https://user-images.githubusercontent.com/75669297/167834522-f1e988e8-bd24-44b1-a90c-f69791a9a623.png">

<img width="500" alt="スクリーンショット 2022-05-11 19 59 46" src="https://user-images.githubusercontent.com/75669297/167834725-425a6b32-ba60-4201-b27e-33588ceff1df.png">

<img width="500" alt="スクリーンショット 2022-05-11 20 00 16" src="https://user-images.githubusercontent.com/75669297/167834589-bbc80f8b-c6bc-43bb-aa33-44bbc800e5eb.png">  -->

<img width="522" alt="MSB_START" src="https://user-images.githubusercontent.com/75669297/206968805-05caf9b2-5b44-47a6-8215-3b96817fd590.png">
<img width="517" alt="スクリーンショット 2022-12-12 午後2 31 32" src="https://user-images.githubusercontent.com/75669297/206968834-d86c69d5-7e1d-4e36-9370-a66addc0c4fa.png">
<img width="535" alt="スクリーンショット 2022-12-12 午後2 26 46" src="https://user-images.githubusercontent.com/75669297/206968863-1bb7e5cd-0c43-4573-8292-3e3e629f39bf.png">

<img width="394" alt="スクリーンショット 2022-12-12 午後2 27 10" src="https://user-images.githubusercontent.com/75669297/206968889-1fe25c05-6071-422b-9e1b-549d56f5d351.png">

<img width="517" alt="スクリーンショット 2022-12-12 午後2 47 22" src="https://user-images.githubusercontent.com/75669297/206969650-cff19478-898a-4344-a73a-80469184053c.png">


## Deployment
### Deploy with pre-built containers
It is __highly recommended__ to deploy moe-sticker-bot using containers.
A pre-built OCI container is available at https://github.com/users/star-39/packages/container/package/moe-sticker-bot

Simply run:
```
docker run -dt ghcr.io/star-39/moe-sticker-bot --bot_token="..."
```
If you are on ARM64(AArch64) arch, append `aarch64` to all tags.

To deploy all features - including database/webapp/emoji,

please use kubernetes or podman with a yaml deployment file.

See a real world deployment example on [deployments/kubernetes_msb.yaml](https://github.com/star-39/moe-sticker-bot/blob/master/deployments/kubernetes_msb.yaml).


### System Dependencies
* ImageMagick
* bsdtar (libarchive-tools)
* ffmpeg
* curl
* mariadb-server (optional)
* nginx (optional)
* [msb_emoji](https://github.com/star-39/moe-sticker-bot/tree/master/microservices/msb_emoji) (optional)


## Build
### Build Dependencies
 * golang v18+
 * nodejs v18+
 * react-js v18+
 
<details>
<summary>Brief build instructions</summary>

```
# For Fedora / RHEL / CentOS etc. (Requires RPM Fusion)
dnf install git ImageMagick libwebp bsdtar curl ffmpeg go
# For Debian / Ubuntu etc.
apt install git imagemagick libarchive-tools curl ffmpeg go
# For Arch
pacman -S install git ffmpeg imagemagick curl libarchive go
# For macOS
brew install git imagemagick ffmpeg curl go
# For Windows, please install scoop and use Windows Powershell:
scoop install ffmpeg imagemagick go

git clone https://github.com/star-39/moe-sticker-bot && cd moe-sticker-bot

go build -o moe-sticker-bot cmd/main.go 
```
</details>

#### WebApp
Since 2.0 version of moe-sticker-bot, managing sticker set's order and emoji is now through Telegram's
new WebApp technology. 

See details on [web/webapp](https://github.com/star-39/moe-sticker-bot/tree/master/web/webapp3)

Check `--help` for detailed webapp configs.

## CHANGELOG
v2.3.0 (20230207)
  * Fix flood limit by using local api server.
  * Support webhook and local api server.
  * Huge performance gain.
  * Fix /search panic.

v2.2.1 (20230204)
  * Fix webm too big.
  * Fix id too long.
  * Tuned flood limit algorithm.

v2.2.0 (20230131)
  * Support animated kakao sticker.
  * 支援動態kakao貼圖。

v2.1.0 (20230129)
  * Support exporting sticker to WhatsApp.
  * 支援匯出貼圖到WhatsApp

2.0.1 (20230106)
  * Fix special LINE officialaccount sticker.
  * Fix `--log_level` cmdline parsing.
  * Thank you all! This project has reached 100 stars!

2.0.0 (20230105)
  * Use new WebApp from /manage command to edit sticker set with ease.
  * Send text or use /search command to search imported LINE/kakao sticker sets by all users.
  * Auto import now happens on backgroud.
  * Downloading sticker set is now lot faster.
  * Fix many LINE import issues.
  * 通過/manage指令使用新的WebApp輕鬆管理貼圖包.
  * 直接傳送文字或使用/search指令來搜尋所有用戶匯入的LINE/KAKAO貼圖包.
  * 自動匯入現在會在背景處理.
  * 下載整個貼圖包的速度現在會快許多.
  * 修復了許多LINE貼圖匯入的問題.
  
<details>
<summary>Detailed 2.0 Changelogs 詳細的2.0變更列表</summary>

2.0.0 (20230104)
  * Improve flood limit handling.
  * Auto LINE import now happens on backgroud.
  * Improve GIF download.

2.0.0 RC-7 (20221230)
  * Support /search in group chat.
  * Fix search result.
  * Fix empty sticker title.
  * Sticker download is now parallel.

2.0.0 RC-6 (20221220)
  * Fix line APNG with unexpected `tEXt` chunk.
  * Changed length of webm from 2.9s to 3s.
  * Minor improvements.

2.0.0 RC-5 (20221211)
  * Fix potential panic when onError
  * Warn user sticker set is full.
  * Fix LINE message sticker with region lock.

2.0.0 RC-4 (20221211)
  * Fix edit sticker on iOS
  * Fix error editing multiple emojis.

2.0.0 RC-3 (20221210)
  * Complies to LINE store's new UA requeirments.
  * Fix animated sticker in webapp.
  * Fixed sticker download
  * Fixed webapp image aspect ratio.

2.0.0 RC-2 (20221210)
  * Fix fatalpanic on webapp.
  * Add /search functionality.
  * Removed gin TLS support.
  * Auto database curation.

2.0.0 RC-1 (20221206)
  * WebApp support for edit stickers.
  * Code structure refactored.
  * Now accepts options from cmdline instead of env var.
  * Support parallel sticker download.
  * Fix LINE officialaccount/event/sticker
  * Fix kakao link with queries.

</details>

1.2.4 (20221111)
  * Minor improvements.
  * Fixed(almost) flood limit.
  * Fixed kakao link with queries.

1.2.2 (20220523)
  * Improved user experience.

1.2.1 (20220520)
  * Improved emoji edit.

1.2 (20220518)
  * Fix import error for LINE ID < 775 
  * Improved UX during /import.
  * Warn user if sticker set is already full.

1.1 (20220517)
  * Code refactors.
  * UX improvements.
  * Skip error on TGS to GIF due to lottie issues.

1.0 (20220513)
  * First stable release in go version.
  * Added support for downloading TGS and convert to GIF.
  * Backing database for @moe_sticker_bot has gone complete sanitization.

1.0 RC-9(20220512)
  * Add an administrative command to _sanitize_ database, which purges duplicated stickers.
  * Add an advanced command /register, to register your sticker to database.
  * Minor bug fixes.
  * This is the REAL final RC release, next one is stable!

1.0 RC-8 GO(20220512)
  * Fix rand number in ID.
  * Major code refactor.
  * Downlaod sticker now happens on background.
  * Better documentation.
  * This release should be the final RC... hopefully.

1.0 RC-7 GO(20220511)
  * You can specify custom ID when /create.
  * Changed import ID naming scheme for cleaner look.
  * Die immediately if FloodLimit exceeds 4.
  * If everything looks good, this should be the last RC for 1.0

1.0 RC-6 GO(20220511)
  * New feature: Change sticker order.
  * New feature: Edit sticker emoji.
  * New import support: kakaotalk emoticon.
  * Fix possible panic when editMessage.
  * We are closing to a stable release! RC should not exceed 8.

1.0 RC-5 GO(20220510)
  * New feature: download raw line stickers to zip.
  * FatalError now prints stack trace.
  * zh-Hant is now default in auto LINE title.
  * Quality of video sticker should improve by a bit.
  * Fix possible slice out of range panic.
  * If user experience FloodLimit over 3 times, terminate process.s

1.0 RC-4 GO(20220509)
  * Use my custom fork of telebot
  * User sent sticker now supports any file.

1.0 RC-3 GO(20220509)
  * Split large zip to under 50MB chunks.
  * Split long message to chunks.
  * GIF downloaded is now in original 512px resolution.
  * You can press "No" now when sent link or sticker.
  * If error is not HTTP400, bot will retry for 3 times.
  * Other minor improvements.

1.0 RC-2 GO(20220508)
  * Fix SEGV when user requested /quit
  * Ignore FloodLimit by default since API will do retry at TDLib level.
  * Fix emoji in database.
  * Fix video sticker when /manage.
  * Support line message sticker and emoticon(emoji).

1.0 RC-1 GO(20220506)
  * Completely rewritten whole project to golang
  * Countless bug fixes.
  * You can send sticker or link without a command now.
  * Performance gained by a lot thanks to goroutine and worker pool.

<details>
<summary>Old changelogs</summary>

5.1 RC-4 (20220423)
  * Fix duplicated sticker.
  * Fix alpha channel converting GIF.
  
5.1 RC-3 (20220416)
  * Do not use joblib due to their bugs.
  * /download_telegram_sticker now converts to standard GIFs.

5.1 RC-2 (20220326)
  * Significantly improved perf by using parallel loop.
  * Sanitize kakao id starting with -

5.1 RC-1 (20220309)
  * Support kakaotalk emoticon.
  * Add more check for telegram sticker id.

5.0 RC-12 (20220305)
  * Database now records line link and emoji settings.
  * Fix issue when line name has <> marks.
  * Fix issue adding video to static set.
  * Fix hang handling CallbackQuery.

5.0 RC-11 (20220303)
  * You can now delete a sticker set.
  * /manage_sticker_set will show sets you created.
  * Fix missing sticker during USER_STICKER.

5.0 RC-10 (20220226)
  * Performance is now significantly improved.
  * Fix issue converting Line message stickers.
  * Bypass some regional block by LINE.

5.0 RC-9 (20220223)
  * Splitted line popups to two categories, one keeping animated only.
  * Bot now has a database stroing "good" imported sticker sets.
  * Fix duplicated stickers in sticker set.

5.0 RC-8 (20220222)
  * Fix user sticker parsing.
  * Add support for MdIcoFlashAni_b

5.0 RC-7 (20220215)
  * Fix exception if user sent nothing during USER_STICKER
  * Fix a bug where /import_line_sticker may have no response.
  * Corrected file download limit.
  * Fix animated sticon
  * Fix import hang due to missing ffmpeg '-y' param.

5.0 RC-6 (20220215)
  * Fix python-telegram-bot WebHook problem.
  * Fix emoji assign.
  * Fix black background video sticker.
  * Fix "Sticker too big" when uploading video sticker.

5.0 RC-5 (20220214)
  * Allow using WebHook for better performance.
  * Code refactors.
  * Support Line name sticker.

5.0 RC-4 (20220212)
  * Improved user sticker exprerience.

5.0 RC-3 (20220212)
  * Fix a bug where creating sticker set with one sticker will cause fatal error.
  * Fix missing clean_userdata in /download_line_sticker
  * Tune VP9 params to avoid hitting 256K limit. This reduces video quality by a bit.
  
5.0 RC-2 (20220211)
  * Fix media_group
  * Minor bug fixes.
  * Version 5.0 now enters freature freeze. No new feature will be added. Will have bug fixes only.

5.0 RC-1 (20220211)
  * Support Line popup sticker without sound
  * Support AVIF.
  * Many bug fixes.

5.0 ALPHA-1 (20220211)
  * Full support of animated(video) sticker. 完整支援動態貼圖. アニメーションスタンプフル対応。
  * New feature: /manage_sticker_set, now you can add, delete, move sticker in a sticker set.
  * Add support for Line full screen sticker(animated).

4.0 ALPHA-5 (20220210)
  * Bring back fake RetryAfter check since some people still having this issue.

4.0 ALPHA-4 (20220210)
  * Support user uploaded animated(video) stickers. You can both create or add to set.
  * Better support sticon(line_emoji)
  * Bug fixes.

4.0 ALPHA-3 (20220209)
  * Supports all special line stickers,
  * including effect_animation and sticon(emoji)

4.0 ALPHA-1 (20220209)
  * Supports animated line sticker import.
</details>

## Technical Details
![MSB_INFO](https://user-images.githubusercontent.com/75669297/210700704-4c9b366a-c72c-42fe-919c-336b7b8024c4.svg)



## Special Thanks:
[<img width=200 src="https://idcs-cb5322c0a68345bb83637843d27aa437.identity.oraclecloud.com/ui/v1/public/common/asset/defaultBranding/oracle-desktop-logo.gif">](https://www.oracle.com/cloud/) for free 4CPU AArch64 Cloud Instance.

<a href="http://t.me/StickerGroup">貼圖群 - Sticker Group Taiwan</a> for testing and reporting.

[LINE Corp](https://linecorp.com/) / [Kakao Corp](http://www.kakaocorp.com/) for cute stickers.

You and all the users! ☺


## License
The GPL V3 License

![image](https://www.gnu.org/graphics/gplv3-with-text-136x68.png)
