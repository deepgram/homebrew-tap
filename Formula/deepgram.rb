# This formula is auto-generated from scripts/templates/deepgram.rb.template
# in https://github.com/deepgram/cli on every root `v*` release of deepctl.
# Manual edits to this file will be overwritten on the next release.
# To change the formula, edit the template in deepgram/cli — not this file.

class Deepgram < Formula
  include Language::Python::Virtualenv

  desc "Official Deepgram CLI for speech recognition and audio intelligence"
  homepage "https://github.com/deepgram/cli"
  url "https://files.pythonhosted.org/packages/bf/30/547f8fbd164575f5c1bd658ead05d1b16c496fb10ff11a003f6966a7864d/deepctl-0.5.0.tar.gz"
  sha256 "ad58918ffe302a34a5be7ea84f5d3eb4138ed36c84fa4bfc9e86dc1e6512f1d1"
  license "MIT"

  # Build-time deps for the `cryptography` and `pydantic_core` resources,
  # which compile Rust extensions via `maturin`. Language::Python::Virtualenv
  # defaults to --no-binary :all: so precompiled wheels are bypassed and the
  # Rust toolchain has to be available during install.
  depends_on "pkgconf" => :build
  depends_on "rust" => :build

  # Used by `dg debug probe`, `dg ffprobe`, and raw-audio streaming flows
  # (e.g. `ffmpeg ... | dg listen --encoding linear16`).
  depends_on "ffmpeg"
  # PortAudio backend used by `sounddevice` for `dg listen --mic`. Imported
  # lazily, but required at runtime when capturing from the microphone.
  depends_on "portaudio"
  depends_on "python@3.13"

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/5f/56/a8120250d128bed162cd73c76d45f6ef9991f3e068f62a8ee060afa3104a/annotated_types-0.8.0.tar.gz"
    sha256 "13b2beaad985e05e2d6407ee4c4f35590b11f8d693a258a561055cac8f64cab7"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a1/98/7e457a3b014976887a050561955c0b76e1e7e2d6e27b78ecef2ef80518f2/anyio-4.16.0.tar.gz"
    sha256 "59bb03251907983d1603d27c3087ddb1e93299ea2163adcdba37899a4fb12ffb"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/fd/11/b524cbd9bbdaca58608e4cf4053fd463417549e1959fa8d3aa18319f9555/certifi-2026.10.23.tar.gz"
    sha256 "a9895e6e2758b371e0545e321a3a8fd1fcfd9829ada8824a936dfb16aaaf36cd"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/9e/ef/008a1939e372c06329a3fce4279c02f328488f3526744906eeec3da7ad5f/cffi-2.1.1.tar.gz"
    sha256 "dd31f52ea1086513bb9df30f8fcee9b8918323ae067a3d5b78bc826a000712be"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/33/1c/f41d4e74c28ab327ff3acd36053f7ea506c55872d7a90b0fa71aa3ab0c89/charset_normalizer-3.5.2.tar.gz"
    sha256 "39de2a259fc954455c57274dc94c79d5842774e1247a016aff30bc0efed0f4ef"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/45/37/edbf1b0707709013c0cf2e8317e03d97ed29bf4cac709fe328904ae92a38/click-8.5.1.tar.gz"
    sha256 "9bbfada76703fd1d784b83eea012e3e8c6a001a876543ef104fa56aaaeb072b4"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/9d/af/182eb91b0df3fe75c4d9f26fe70684569566745f6ba7e5c9c73a862c5252/cryptography-50.0.2.tar.gz"
    sha256 "7b46165bb56eb4704e2eaaf86f3c940d19154535d9b0ca7d6d590b04060e00d5"
  end

  resource "deepctl-cmd-api" do
    url "https://files.pythonhosted.org/packages/a4/bd/8b88c6addbb6a42f4ca22987839eb50e47c4ba1c075d17ccdbbf9cdd9eb9/deepctl_cmd_api-0.5.0.tar.gz"
    sha256 "ad4c3962314809649199a23b8b28fdc5298f90a788e0d81a773c891c14ad00ca"
  end

  resource "deepctl-cmd-billing" do
    url "https://files.pythonhosted.org/packages/fd/cf/0ac8e1c092c8d9c2408ae4f6a15b7fe041cf4b176049a9baadb629fd84ec/deepctl_cmd_billing-0.5.0.tar.gz"
    sha256 "f28b05695bb9f1db39d70eeec828c67e10578936b31a0b16a99a087455c2f754"
  end

  resource "deepctl-cmd-completion" do
    url "https://files.pythonhosted.org/packages/de/43/b5dfe461520c002387994251eb3e57dc60df424f066559ecb7f6f3754bdb/deepctl_cmd_completion-0.5.0.tar.gz"
    sha256 "34a72035ecbbb5203363d212321ccf17f7b7707a5915b55c925e4eeb43df9054"
  end

  resource "deepctl-cmd-debug" do
    url "https://files.pythonhosted.org/packages/5a/9d/f9f1398763b73d4b7df9f0874115d42c88927685a7f52e86addc8bf3173c/deepctl_cmd_debug-0.5.0.tar.gz"
    sha256 "c7cd3fd723fa2f56611a4c9f7024cf11706200674a3e87a473f0ecd9a17c0d30"
  end

  resource "deepctl-cmd-debug-audio" do
    url "https://files.pythonhosted.org/packages/7c/3a/4e10a052af39e86bbf4b63acdba1c3624ed879c0744122cb5d68ddbeb2f3/deepctl_cmd_debug_audio-0.5.0.tar.gz"
    sha256 "5ed76663834ee8466b4ec370face2bd1300fae906fb6b6fb7afb3e0a2deb601f"
  end

  resource "deepctl-cmd-debug-browser" do
    url "https://files.pythonhosted.org/packages/d3/2e/dbcb18ce36b4a01246eb2c055d48a1e7569713ba5e194bfd79d864c098cd/deepctl_cmd_debug_browser-0.5.0.tar.gz"
    sha256 "0f22f00f2b9f772cae40238603d82b45dbe07fc6300e43caff050e3983e3be90"
  end

  resource "deepctl-cmd-debug-network" do
    url "https://files.pythonhosted.org/packages/4c/da/3e9c9433a432175aecc9e2fba4a776cfe1503725710f218e7cf502856e52/deepctl_cmd_debug_network-0.5.0.tar.gz"
    sha256 "438f28c929006c2cb8b43d6f4a477390c05269480c97775abd9c24a722352abb"
  end

  resource "deepctl-cmd-debug-probe" do
    url "https://files.pythonhosted.org/packages/d5/7d/053ad71c4e44e1d0a8afe7a07ae44ef7742b69c18d28ad5367b9aadc596b/deepctl_cmd_debug_probe-0.5.0.tar.gz"
    sha256 "60d4276b0c02d3b16a7a2de5f88b013050c41a38e94cf57179d945af20f8e904"
  end

  resource "deepctl-cmd-debug-toolkit" do
    url "https://files.pythonhosted.org/packages/81/81/5f89cfe5e16f4057f14e9f4368a0a9f7fcf7167be9e61fc650afef5b3361/deepctl_cmd_debug_toolkit-0.5.0.tar.gz"
    sha256 "636f3eadfa267bb0c33948a1c0b802178eac9a50544ab63d2863a347df458450"
  end

  resource "deepctl-cmd-ffprobe" do
    url "https://files.pythonhosted.org/packages/32/aa/21a0dd6d9fb3d31471aa9ce81215fadb89f8c3bd11378a6d5fced1affbfa/deepctl_cmd_ffprobe-0.5.0.tar.gz"
    sha256 "5702f55396edf34828cb99a948228ef702aed1cf77c1612b47dd5361a8cf9a64"
  end

  resource "deepctl-cmd-init" do
    url "https://files.pythonhosted.org/packages/1b/c9/561ff66b3040b53c824958bcaa33a1564144e7583d0f35d7971b723511ce/deepctl_cmd_init-0.5.0.tar.gz"
    sha256 "9917c24c0a8a12dca6bc281ac7b08bb50c2f128ab3b6c5bae64efac624b53812"
  end

  resource "deepctl-cmd-keys" do
    url "https://files.pythonhosted.org/packages/c0/4e/e24ff156f150cdce4969797930b48d1474404a71fbfd5928c388df388efc/deepctl_cmd_keys-0.5.0.tar.gz"
    sha256 "4d71d0ac6be0c046b29d1634f2bb83746355399d3e7199f3a51d0983c3a43bfd"
  end

  resource "deepctl-cmd-listen" do
    url "https://files.pythonhosted.org/packages/bf/f5/f32311c52d862bf4271caf3be456e24ae932f3df926217fd34fa4e3f05c9/deepctl_cmd_listen-0.5.0.tar.gz"
    sha256 "b1a933c77e77bbba3e63965d01f1e6ed2e04035d9796e39cf8b8f8c5726f4cef"
  end

  resource "deepctl-cmd-login" do
    url "https://files.pythonhosted.org/packages/b8/2c/4da1798a6d5e4814a2e6189df112f905a27017e897ad81afeaa5df6c1d99/deepctl_cmd_login-0.5.0.tar.gz"
    sha256 "8263abee9658b4a9866c6b3d0f7c5342e53a77fe9789c50742d405061a5653a5"
  end

  resource "deepctl-cmd-mcp" do
    url "https://files.pythonhosted.org/packages/67/ad/7b169fe6e4aeae2ef4aacbc84489c16d09431539a0a7435897ba87b278bc/deepctl_cmd_mcp-0.5.0.tar.gz"
    sha256 "bd71bcc90aca60cdf85e46ecfc94ba52534668f0e275f77986a8fa260aac975f"
  end

  resource "deepctl-cmd-members" do
    url "https://files.pythonhosted.org/packages/2f/2e/69913deb77fde29d0a3c3d391fe1f74607e52cf6a53a7dca348f20dfa31d/deepctl_cmd_members-0.5.0.tar.gz"
    sha256 "755651158fa457e9ce70f1ea32206a8c1ddeb8fcfff403b135ecbc1697f44876"
  end

  resource "deepctl-cmd-models" do
    url "https://files.pythonhosted.org/packages/7c/b0/a794de27d9c3a98db971a15aaa77c798253db24e52ef3f34098cc69892be/deepctl_cmd_models-0.5.0.tar.gz"
    sha256 "8151b275e2b2a1d0e35b0c443188fdbcdfa0447b82c7647381c69ed64dcf8bba"
  end

  resource "deepctl-cmd-plugin" do
    url "https://files.pythonhosted.org/packages/6f/d9/e68cae7ecda6c242bbff371d2e893a35e6747807b80ad903c6ca9a6d8ed5/deepctl_cmd_plugin-0.5.0.tar.gz"
    sha256 "3972cc30039aca8fc6d11b670398c5e6762551aa953a0d1659b27d4168977523"
  end

  resource "deepctl-cmd-projects" do
    url "https://files.pythonhosted.org/packages/ad/4a/6caa025062994a983a9d28249da262042a0c42febc6406d72d7b87e8831d/deepctl_cmd_projects-0.5.0.tar.gz"
    sha256 "e05c47b394eaadd2a60dbaa9cfd076843239a7bcebc16d05cee18d811f52de4d"
  end

  resource "deepctl-cmd-read" do
    url "https://files.pythonhosted.org/packages/04/01/7ca77565ca00b4d9cc3b1642b55411afe3e19ec7baf27160e9450f416d7f/deepctl_cmd_read-0.5.0.tar.gz"
    sha256 "b1a2a98b4f09564fda2b3108f4e04f14ce1da22e05809a8e5ecacef53e4b382b"
  end

  resource "deepctl-cmd-requests" do
    url "https://files.pythonhosted.org/packages/95/18/b7b4cfbbbf22ab4dffd747b11ed3a898538d04bb4db11c4d7f1d6f9f87ce/deepctl_cmd_requests-0.5.0.tar.gz"
    sha256 "93d9b3d4d6cbb9434755b06b3c629e468063cd3dfdedf2146a858bc9d261a1c2"
  end

  resource "deepctl-cmd-skills" do
    url "https://files.pythonhosted.org/packages/b9/77/323ee9db5b7b934463f712a738f5c0db2f16ddab240f2d9a4cb6312b6709/deepctl_cmd_skills-0.5.0.tar.gz"
    sha256 "47fd9aa8d354df62b7597864c4b8ab2712600f795255a384e3a4c27198685737"
  end

  resource "deepctl-cmd-speak" do
    url "https://files.pythonhosted.org/packages/25/d1/2769ea83e70fb2b079fa49963abe0f5ca892c78b7db86bbfbaba3adcc5a9/deepctl_cmd_speak-0.5.0.tar.gz"
    sha256 "ce25c3c71b37c20eb74a1140701b7b792753db3570401df69a13215cb05ea09b"
  end

  resource "deepctl-cmd-transcribe" do
    url "https://files.pythonhosted.org/packages/54/2d/f716e29e95815cdd2339cac2cbb8b1d58a91eedc3e02e0072b0d584edb14/deepctl_cmd_transcribe-0.5.0.tar.gz"
    sha256 "02393c3f4fc091e06896d35d050900929263b8320232db1d3df421935c77a495"
  end

  resource "deepctl-cmd-update" do
    url "https://files.pythonhosted.org/packages/8a/61/314f6b44c4b612ae2b85bed10de5b23e1dfe916bb964e2097c7c6d97d052/deepctl_cmd_update-0.5.0.tar.gz"
    sha256 "5699d2dacadf7bcb500c26e67b5c9d8edb5c93b45c54bb1f159b6d229ae57a9c"
  end

  resource "deepctl-cmd-usage" do
    url "https://files.pythonhosted.org/packages/fb/3d/d9cd3d7bdf040c44fcfeb30ec01b1e694e30924daf2aea302aebbd1277a9/deepctl_cmd_usage-0.5.0.tar.gz"
    sha256 "58f12fe43ffaebb13a2f1f4be16957cbf953a25be91406c90c2d99350279298c"
  end

  resource "deepctl-core" do
    url "https://files.pythonhosted.org/packages/ae/93/469df212ccc15d73c79e461b7c0f96f2f1532275ee208875625b67fdbff5/deepctl_core-0.5.0.tar.gz"
    sha256 "f06679b14f89f95c20c440386055468aa6d8c97806b149dbaf82111ac8cd5f10"
  end

  resource "deepctl-shared-utils" do
    url "https://files.pythonhosted.org/packages/40/77/478ff24aa977d4922d3c45758ab6196f5bf2cbea9cf362eb22c7cb35aee6/deepctl_shared_utils-0.5.0.tar.gz"
    sha256 "3fdc53c6f4b80944fa84e06ca9fb69f51fd27edf3ee73e6b0f98e976f13c6cfb"
  end

  resource "deepctl-telemetry" do
    url "https://files.pythonhosted.org/packages/78/4b/41d1b4b9d45c5ccaede20a10d9bdf036ea9585d02198184466c2952933fe/deepctl_telemetry-0.5.0.tar.gz"
    sha256 "cb47184a8872d496dbc104ee84d8331dbec41adc5f010de9c60fc4f94e474363"
  end

  resource "deepgram-captions" do
    url "https://files.pythonhosted.org/packages/ee/af/7e184a69de5a83e03a1b5d3d325d82bc19156618011ae366079fda556180/deepgram_captions-2.0.0.tar.gz"
    sha256 "0f0bde3391c3f40be9fdfc9e42a7cf89a82b8a460aa62d24ddd8e55a100a6dd3"
  end

  resource "deepgram-sdk" do
    url "https://files.pythonhosted.org/packages/24/2a/657f471495766961fc89f1c4dce94c0c0065272d7c65037e0a8e69cd59a5/deepgram_sdk-7.19.0.tar.gz"
    sha256 "e92416b33abcfb7146be7d894e7d8f9b4e8ad8dbbc2ddb4fc65989eff0be401a"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "httpx-sse" do
    url "https://files.pythonhosted.org/packages/0f/4c/751061ffa58615a32c31b2d82e8482be8dd4a89154f003147acee90f2be9/httpx_sse-0.4.3.tar.gz"
    sha256 "9b1ed0127459a66014aec3c56bebd93da3c1bc8bb6618c8082039a44889a755d"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "jaraco.classes" do
    url "https://files.pythonhosted.org/packages/06/c0/ed4a27bc5571b99e3cff68f8a9fa5b56ff7df1c2251cc715a652ddd26402/jaraco.classes-3.4.0.tar.gz"
    sha256 "47a024b51d0239c0dd8c8540c6c7f484be3b8fcf0b2d85c13825780d3b3f3acd"
  end

  resource "jaraco.context" do
    url "https://files.pythonhosted.org/packages/c9/60/e83781b07f9a66d1d102a0459e5028f3a7816fdd0894cba90bee2bbbda14/jaraco.context-5.3.0.tar.gz"
    sha256 "c2f67165ce1f9be20f32f650f25d8edfc1646a8aeee48ae06fb35f90763576d2"
  end

  resource "jaraco.functools" do
    url "https://files.pythonhosted.org/packages/bc/66/746091bed45b3683d1026cb13b8b7719e11ccc9857b18d29177a18838dc9/jaraco_functools-4.0.1.tar.gz"
    sha256 "d33fa765374c0611b52f8b3a795f8900869aa88c84769d4d1746cd68fb28c3e8"
  end

  resource "jeepney" do
    url "https://files.pythonhosted.org/packages/7b/6f/357efd7602486741aa73ffc0617fb310a29b588ed0fd69c2399acbb85b0c/jeepney-0.9.0.tar.gz"
    sha256 "cf0e9e845622b81e4a28df94c40345400256ec608d0e55bb8a3feaa9163f5732"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/b3/fc/e067678238fa451312d4c62bf6e6cf5ec56375422aee02f9cb5f909b3047/jsonschema-4.26.0.tar.gz"
    sha256 "0c26707e2efad8aa1bfc5b7ce170f3fccc2e4918ff85989ba9ffa9facb2be326"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/19/74/a633ee74eb36c44aa6d1095e7cc5569bebf04342ee146178e2d36600708b/jsonschema_specifications-2025.9.1.tar.gz"
    sha256 "b540987f239e745613c7a9176f3edb72b832a4ac465cf02712288397832b5e8d"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/43/4b/674af6ef2f97d56f0ab5153bf0bfa28ccb6c3ed4d1babf4305449668807b/keyring-25.7.0.tar.gz"
    sha256 "fe01bd85eb3f8fb3dd0405defdeac9a5b4f6f0439edbb3149577f244a2e8245b"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/16/fc/cee2c45553c9a9bf77d8b0c391560c556d7ed756b1f0bb35eb5d48db09ea/markdown_it_py-4.3.0.tar.gz"
    sha256 "91a58fa5b72c71a40cf7177250fd767480d7a2bb3ac426ccfb76fb90305fdaaa"
  end

  resource "mcp" do
    url "https://files.pythonhosted.org/packages/ba/93/0142dc84a666daf8ad51a34268f34c12fd6fda4f3810c4be2504eecc8212/mcp-1.30.0.tar.gz"
    sha256 "445414625fce5c295faa505bb11bacece661ab6f4028d57c935db57820b7a3e4"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/52/b8/c63995bebbb9ac9c059350e0fb8c82c2420c85aeca7d34e40aecf3df9281/more_itertools-11.2.1.tar.gz"
    sha256 "cbf08fd0af284dc69718b9b76a8e6203df624d70209ea511e4219d350c856f63"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/7d/fa/3944b40b07da9ce895c0e6303a5ab7d53da063554f534556b134a54d6093/packaging-26.3.tar.gz"
    sha256 "94edc256424af38762eb31306eed28beb9f0efc50a8837492c9d6fd6004aed79"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/d7/9a/8475be631fb33ca1466915e70fd594c42a4e84b512db650eaa14f90fe75d/platformdirs-4.14.5.tar.gz"
    sha256 "32e9921db7385aa8169bee4fe9501923e5715ba9fb7ea3b9c69b0d8e0639f7a1"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/cb/27/eeb9f307bf07060f3d9f9aa0fb8c15b01bdfded0a941e4b2719c7f94cacd/pycparser-3.12.tar.gz"
    sha256 "f03387877eab82ce01bbdfd0ba7252ee55a90b1c708d5129e2ce915475cf1db6"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/b4/fc/1203d011145c98ddce3cd2f505bb54375ef8d43223053df6bfcf3c746f46/pydantic-2.14.3.tar.gz"
    sha256 "1054f237f4d4733e5a30e1e2333bd33a2004ab9ab1510bd053a9a31bb48e232d"
  end

  resource "pydantic_core" do
    url "https://files.pythonhosted.org/packages/9c/0f/34f9ce4ba701dd0b815033ef94d99b56f66200e578ee6052aa3ac26f064e/pydantic_core-2.50.4.tar.gz"
    sha256 "aead3b74b68396bf0feab5d57e050b730ded7df55853c1e048a87e00aaf033c6"
  end

  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/59/28/227c843eedd29bd78e132e5aafa420d83154b10465c312f9c21ff2eaf77d/pydantic_settings-2.16.3.tar.gz"
    sha256 "10e36f616623ebb586c05ca3d3cd22927146869db413d4f14c20c514442a1337"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/49/2e/ced460408999b33da6b31b0021b0f37d329e202d4169aeb164493778f25b/pygments-2.21.0.tar.gz"
    sha256 "610ca751c9bc2492b38eb9a38a7fbc93edbbb2d7182edaf34e66ae493dee5c8c"
  end

  resource "PyJWT" do
    url "https://files.pythonhosted.org/packages/43/ea/5194e52748b0da83d71e082d75496eaec6e58f419f5e184786ded517e6a9/pyjwt-2.15.1.tar.gz"
    sha256 "4f259e80cdfb6b3fc18a7de51fd1ef9ec79652f25019bae68975ca2468a34df8"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/74/26/2fbeedb218a787a5eea551c7532cac4e009f83d689dd2faa0d0353473f86/python_dotenv-1.2.4.tar.gz"
    sha256 "f0d53e69935a851c0dcc78f3ab7aaccd8cabef0b92382b576b824212902873c0"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/9f/b7/15b905f6142a9a8a68f66900788da1a32e4d4254452783b37ad1eccb0506/python_multipart-0.0.33.tar.gz"
    sha256 "b8112424a6abd162ec08d390565dd113ad699f2fe6fef3c987b8bbcbfe9e390d"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/22/f5/df4e9027acead3ecc63e50fe1e36aca1523e1719559c499951bb4b53188f/referencing-0.37.0.tar.gz"
    sha256 "44aefc3142c5b842538163acb373e24cce6632bd54bdb01b21ad5863489f50d8"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/ac/c3/e2a2b89f2d3e2179abd6d00ebd70bff6273f37fb3e0cc209f48b39d00cbf/requests-2.34.2.tar.gz"
    sha256 "f288924cae4e29463698d6d60bc6a4da69c89185ad1e0bcc4104f584e960b9ed"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/42/68/3bd46b8a5e01d3c2ebdf9c5e9497912e3fe0cde02bac21a7130ca866e403/rpds_py-2026.9.1.tar.gz"
    sha256 "4793ef7f78268b124b73fa933440f01d258bbae01de9fa53e9080c9ab0425a12"
  end

  resource "SecretStorage" do
    url "https://files.pythonhosted.org/packages/1c/03/e834bcd866f2f8a49a85eaff47340affa3bfa391ee9912a952a1faa68c7b/secretstorage-3.5.0.tar.gz"
    sha256 "f04b8e4689cbce351744d5537bf6b1329c6fc68f91fa666f60a380edddcd11be"
  end

  resource "sentry-sdk" do
    url "https://files.pythonhosted.org/packages/d2/95/121b20d75e738d249a0e26e6476a2acb178673e8228002748fc0cd85ce55/sentry_sdk-2.75.0.tar.gz"
    sha256 "c38ac2d4b2435c11da821e173bb9d9088c98f41ae92f559ce0e424170a8e1a29"
  end

  resource "sounddevice" do
    url "https://files.pythonhosted.org/packages/ec/db/0c890e2d9aab9ba284021efc02e1d3aebfecab1b611762d7434602209bcf/sounddevice-0.5.6.tar.gz"
    sha256 "8ec9fbfde2e32f020b167e348f3ab3bac6625a5f15af524d790108ac7147a410"
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/41/43/a232e3cd804293bd4f6d01e8895bc0f6f83ea148d712baf9d783c7d93d23/sse_starlette-3.7.0.tar.gz"
    sha256 "326416da2ab52e9a41b3f409d3ff897eda45aa68c9f3b7b17d0913aab8d219c3"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/48/bb/3d8757f21e9a53d9035c9eb039a777047139a16bfdbedfc7a58241c3d914/starlette-1.10.0.tar.gz"
    sha256 "b8399098d4c1e3522734f7235dc79b1fc967f96cf139c81e0fa30479e0685f9b"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/ff/50/0195198eb1d75bab716bb0a813abea4cc394bfa17a92a189f021a34859af/typing_inspection-0.4.5.tar.gz"
    sha256 "7f16c411e7930dc79596d42ab44672a3fe5f60eb34b781a1647e7872363120c7"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e3/05/b17359e1cefb4f909b5e40b1b90a496d987258916dbbf88e842c729f510e/urllib3-2.8.0.tar.gz"
    sha256 "63bf2ead4c879426ebf22ef2a781eeb4aa3b4ae798a0435506f8687fd5bb9b63"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/da/34/30e9280707135d2cfc589dfff3cb796bd07a3aeb1a3e415ba09dd89d7bb4/uvicorn-0.54.0.tar.gz"
    sha256 "a2e33cbfaa0306f8e6b0c13e0cb89d7d7a2da3e62b90c66e18c33d9807b28620"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/75/79/590c5f0cc7d1661195aeefccb0e342b79f4c77d368d526d028821a390332/websockets-17.4.tar.gz"
    sha256 "09d3939b70df0c8ad2da145ebd50978bccaee1d565e838b0e7921a34d38571eb"
  end

  def install
    virtualenv_install_with_resources

    # Drive completion generation via the `dg` alias so Click derives the
    # _DG_COMPLETE env var; using `deepctl` here would yield _DEEPCTL_COMPLETE
    # and silently produce non-functional completions for users who type `dg`.
    generate_completions_from_executable(
      bin/"dg",
      shells:                 [:bash, :zsh, :fish],
      shell_parameter_format: :click,
    )
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deepctl --version")
    assert_match version.to_s, shell_output("#{bin}/dg --version")
    assert_match version.to_s, shell_output("#{bin}/deepgram --version")

    assert_match "Usage:", shell_output("#{bin}/dg --help")

    # Regression test for the IsolatedVenvStrategy plugin-discovery path that
    # is unique to Homebrew installs (see deepctl-cmd-plugin/strategies.py).
    # `dg plugin list` must succeed in a fresh HOME with no plugin venv.
    ENV["HOME"] = testpath
    assert_match(/plugin/i, shell_output("#{bin}/dg plugin list 2>&1"))
  end
end
