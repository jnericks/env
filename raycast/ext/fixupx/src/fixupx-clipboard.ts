import { showHUD, Clipboard, showToast, Toast, LaunchProps } from "@raycast/api";
import { linkReplacer } from "./util/link-replacer";

export default async function main(props: LaunchProps<{ arguments: Arguments.FixupxClipboard }>) {
  try {
    const text = await Clipboard.readText();
    if (!text) {
      showHUD("No text in clipboard");
      return;
    }

    let { baseUrl } = props.arguments;
    if (!baseUrl) {
      baseUrl = "https://fixupx.com";
    }
    const replacedString = linkReplacer(text, baseUrl);
    if (!replacedString) return;

    await Clipboard.copy(replacedString);
    showHUD(`Fixed: ${replacedString}`);
  } catch (err) {
    await showToast({
      style: Toast.Style.Failure,
      title: "Cannot transform text",
      message: String(err),
    });
  }
}
