import { showHUD } from "@raycast/api";
import { URL } from "url";

export const linkReplacer = (link: string, baseURL: string) => {
  const url = new URL(link);

  if (url.host != "x.com" && url.host != "twitter.com") {
    showHUD("Not an X or Twitter link");
    return;
  }

  // https://x.com/cspan/status/1886461565060162004?s=46&t=3C8dd8dCiD3VSrcHtoArGA
  // console.log(`hash: ${url.hash}`); // hash:
  // console.log(`host: ${url.host}`); // host: fixupx.com
  // console.log(`hostname: ${url.hostname}`); // hostname: fixupx.com
  // console.log(`href: ${url.href}`); // href: https://fixupx.com/cspan/status/1886461565060162004?s=46&t=3C8dd8dCiD3VSrcHtoArGA
  // console.log(`origin: ${url.origin}`); // origin: https://fixupx.com
  // console.log(`password: ${url.password}`); // password:
  // console.log(`pathname: ${url.pathname}`); // pathname: /cspan/status/1886461565060162004
  // console.log(`port: ${url.port}`); // port:
  // console.log(`protocol: ${url.protocol}`); // protocol: https:
  // console.log(`search: ${url.search}`); // search: ?s=46&t=3C8dd8dCiD3VSrcHtoArGA
  // console.log(`searchParams: ${url.searchParams}`); // searchParams: s=46&t=3C8dd8dCiD3VSrcHtoArGA

  return baseURL + url.pathname;
};
