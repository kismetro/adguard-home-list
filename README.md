# adguard-home-list


[
"4chan","500px","9gag",
"activision_blizzard",
"battle_net","betano","betfair","betway","blaze","blizzard_entertainment",
"electronic_arts",
"facebook",
"gog",
"io_interactive",
"minecraft","origin","playstation","plenty_of_fish","roblox","rockstar_games","steam","tiktok","tinder","ubisoft","valorant","wargaming","warnerbrosgames","wizz","xboxlive","zhihu"]

## 차단 안내 페이지 실행

`Dockerfile`과 `index.html`로 nginx 기반 안내 페이지를 실행합니다.

```sh
docker build -t adguard-block-page .
docker run --rm -p 8080:80 adguard-block-page
```

브라우저에서 `http://localhost:8080`으로 확인할 수 있습니다.
AdGuard Home의 DNS 차단과 이 페이지의 연결은 별도로 설정해야 합니다.
