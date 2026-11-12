# This formula is auto-generated from scripts/templates/deepgram.rb.template
# in https://github.com/deepgram/cli on every root `v*` release of deepctl.
# Manual edits to this file will be overwritten on the next release.
# To change the formula, edit the template in deepgram/cli — not this file.

class Deepgram < Formula
  include Language::Python::Virtualenv

  desc "Official Deepgram CLI for speech recognition and audio intelligence"
  homepage "https://github.com/deepgram/cli"
  url "https://files.pythonhosted.org/packages/11/f3/86ca6c407f89479bc8351e6a8fc71bf3093f5324cbe0e11da29780b55ec1/deepctl-0.4.1.tar.gz"
  sha256 "bdcf78885d0c86450c59ae61bb524175b65e9d9d22b6d0e3d83632a7b8e2eb7f"
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

  resource "aiohappyeyeballs" do
    url "https://files.pythonhosted.org/packages/ce/f4/eec0465c2f67b2664688d0240b3212d5196fd89e741df67ddb81f8d35658/aiohappyeyeballs-2.7.1.tar.gz"
    sha256 "065665c041c42a5938ed220bdcd7230f22527fbec085e1853d2402c8a3615d9d"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/6c/4c/bdccd81e9ee225b69c60e7766c9a5b05364f118f4d383713b89a682d772d/aiohttp-3.14.5.tar.gz"
    sha256 "5558a7f5a05af9ecf744af91e5baefc436f93c9333e656c27ec253f9a6bbe178"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/61/62/06741b579156360248d1ec624842ad0edf697050bbaf7c3e46394e106ad1/aiosignal-1.4.0.tar.gz"
    sha256 "f47eecd9468083c2029cc99945502cb7708b082c232f9aca65da147157b251c7"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/0f/6e/a61e86e43bb6039b31a33a8f5fba76fe1cdacf3661e7b9756d4ff1b28cdc/annotated_doc-0.0.6.tar.gz"
    sha256 "7969bb69912085b2285849c0dcac0b4b374fd180c13cf10a87f284ffcf347bbf"
  end

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
    url "https://files.pythonhosted.org/packages/42/e0/f48344b20c6b44fed8a07d02e9a3592c654a56b0876abd67777a082ea061/deepctl_cmd_api-0.0.3.tar.gz"
    sha256 "c60126927cc2e95c7953d67223439279a17b40d872bf3a09ad42474500bd604f"
  end

  resource "deepctl-cmd-billing" do
    url "https://files.pythonhosted.org/packages/cd/9a/24cc011165e0ca1ce83b69910889e01500d9b8f6634a85cbca0a623e2b2b/deepctl_cmd_billing-0.1.0.tar.gz"
    sha256 "a6cd7252b09b147db55211cf31588ae476e218b44ace44e73e7c1810469f8123"
  end

  resource "deepctl-cmd-completion" do
    url "https://files.pythonhosted.org/packages/71/25/ef84e874b7c3a2993d0cf89aad8735f1e37ccd2f2468dbddc88a6b7a0d20/deepctl_cmd_completion-0.0.3.tar.gz"
    sha256 "083c69ba57b7b29fc8e811d2239c08b653531916934ef787965dc3d4c501e270"
  end

  resource "deepctl-cmd-debug" do
    url "https://files.pythonhosted.org/packages/10/59/a5e6a6a238ea014d6b5abb6e992744a634d47a1d979611dfeb50058573cd/deepctl_cmd_debug-0.1.13.tar.gz"
    sha256 "4a84edc15fb62213f8820e55afb9beea42779e37b2d6a8faf9e3f1a7e4b35d8c"
  end

  resource "deepctl-cmd-debug-audio" do
    url "https://files.pythonhosted.org/packages/24/f8/a601b211cc439484baa512c6ce1bc216ec94138bc3899cffd6b956a0641a/deepctl_cmd_debug_audio-0.1.15.tar.gz"
    sha256 "5f59ed292d4d85e2ef0cf3c15628ac899bd578682b489ef61d15a7941e8a3286"
  end

  resource "deepctl-cmd-debug-browser" do
    url "https://files.pythonhosted.org/packages/83/51/aafb9a405da6a715c114dce360015d19bfc58ffef9b11804b1c7c5d0e332/deepctl_cmd_debug_browser-0.1.12.tar.gz"
    sha256 "cfe49681c9d06f0dc25547889012eb4b16aab81bc856c75ead8e05046f8a446e"
  end

  resource "deepctl-cmd-debug-network" do
    url "https://files.pythonhosted.org/packages/4e/0d/8726665878e363ba777786bc79eab2822e0f606b4898703c0360b18d21d4/deepctl_cmd_debug_network-0.1.12.tar.gz"
    sha256 "ff1b501984fea7ed756b359ea27025715535113b4da9a69c2240c9a82dd2e0bb"
  end

  resource "deepctl-cmd-debug-probe" do
    url "https://files.pythonhosted.org/packages/4c/31/07ae6b21dbfdadf9648700b98d5a16ff2a43b679ad01fa9f67d8fc5819bc/deepctl_cmd_debug_probe-0.0.3.tar.gz"
    sha256 "443b024ddca22a375bfe3e30b3e2f2b1c4b83b59233ac51bbb04bd19fdb78a09"
  end

  resource "deepctl-cmd-debug-toolkit" do
    url "https://files.pythonhosted.org/packages/79/c9/dd0c3cffa6efed90ba46cf0f286899450c831c3f5147ad2a87ef06181efc/deepctl_cmd_debug_toolkit-0.2.0.tar.gz"
    sha256 "927e2a58e554094ec695ade477c90690f310ed95e1c054bc8fdd3d3bd45127aa"
  end

  resource "deepctl-cmd-ffprobe" do
    url "https://files.pythonhosted.org/packages/66/3f/508f60946b340331563578dd58c694e30b8e2310bf12ad1e37f233b37035/deepctl_cmd_ffprobe-0.0.4.tar.gz"
    sha256 "fe5e2bba3048c6932afe5f0a9ef23813af497dedf00d576fb0339e67859e40c2"
  end

  resource "deepctl-cmd-init" do
    url "https://files.pythonhosted.org/packages/ef/8c/68aa86c1e6da1a7a2bbf811cad8d6dde8cdb4e5a4996d388b9d53ba0d8fe/deepctl_cmd_init-0.1.1.tar.gz"
    sha256 "a31008c1025a245fde4124b0ae1a59e64ac847dfe4082b9ed5d6178d15a03d68"
  end

  resource "deepctl-cmd-keys" do
    url "https://files.pythonhosted.org/packages/96/46/7851475bff33b12b0311d3238cb95ddf501e3629ee8cc227829058feabcd/deepctl_cmd_keys-0.1.0.tar.gz"
    sha256 "ae4872f7d15517b4c716c4861b58e8fa1da5d6ce27eba8a3fdd8a4780d8cc042"
  end

  resource "deepctl-cmd-listen" do
    url "https://files.pythonhosted.org/packages/47/18/df5ec7c7548b73aad6afc4e881a68a9d1e77897e97d9766a20390c32dc4c/deepctl_cmd_listen-0.0.15.tar.gz"
    sha256 "a01d5d761fc50ddd388a824b5dd3f8e1be7843d1d86538681ab630d450c65903"
  end

  resource "deepctl-cmd-login" do
    url "https://files.pythonhosted.org/packages/ff/70/e8d509f4f380c08152e1032b5cfacfe76aab9bed760aec04a32f486ea1a3/deepctl_cmd_login-0.2.1.tar.gz"
    sha256 "98de0420fa4f05f8cc19a200a6acd6bde828c38a7a9f3e5d0ff3e995d34bb480"
  end

  resource "deepctl-cmd-mcp" do
    url "https://files.pythonhosted.org/packages/94/30/08eb87a77fb49c1e61b01730e09a93a96f6f135a583917bb681d894169a8/deepctl_cmd_mcp-0.1.16.tar.gz"
    sha256 "cce61dde5cb8c3bf8530aa7d477e44df31af1714be02aa0c100326a3c7a4fbe6"
  end

  resource "deepctl-cmd-members" do
    url "https://files.pythonhosted.org/packages/46/3b/2b05bbd0f5a1b0b9901332253d6881c8b6a29ce111f64b6c49be86105b59/deepctl_cmd_members-0.1.0.tar.gz"
    sha256 "5f49e4e498830510087f2f856fa4d3df941f78b7eeb26370141c0d9a35074b89"
  end

  resource "deepctl-cmd-models" do
    url "https://files.pythonhosted.org/packages/66/49/19a405e5eb138ad3e321c48aef1ae9f2438a9ca3b7a700c153c3c90735db/deepctl_cmd_models-0.1.1.tar.gz"
    sha256 "46fe39ceb1dbc54b4fa2573a91bff64685795983f3b87d42b27de42817c6e61e"
  end

  resource "deepctl-cmd-plugin" do
    url "https://files.pythonhosted.org/packages/aa/fc/03780aba5792d6c41a2c749ca95d6065a95df1dc84e9dfa727c53ba51514/deepctl_cmd_plugin-0.1.15.tar.gz"
    sha256 "d70aff263910dd37b3f16a2f08c552a3e1fa1c6b0cc28255e06a6d0869e82bbc"
  end

  resource "deepctl-cmd-projects" do
    url "https://files.pythonhosted.org/packages/fd/fe/439e49fcea4af680095f29b530d207a91d90429e149f8c190fa5ad392470/deepctl_cmd_projects-0.2.1.tar.gz"
    sha256 "89500ceaccbc6e640620252576d0ccc9aca9fbcd0cb9c9c4ad62788e5bf267fd"
  end

  resource "deepctl-cmd-read" do
    url "https://files.pythonhosted.org/packages/fa/53/be8de86e3f4c4d67d843980e06249dbb25dc13c587c2487aedec51cf5412/deepctl_cmd_read-0.1.0.tar.gz"
    sha256 "5a734fee4e67e29fe016f1863bdf6f17cc91aa4031fa53ee8d3293137f0e1268"
  end

  resource "deepctl-cmd-requests" do
    url "https://files.pythonhosted.org/packages/97/e6/b70cf7307c30cd37ef39feec6b173d083e1c596901745ea1bb90af373af0/deepctl_cmd_requests-0.1.0.tar.gz"
    sha256 "87d47d7c3e9a12dc03dd6b702f7d7e0ca39b665e1410a40eb809b7bcad6d2747"
  end

  resource "deepctl-cmd-skills" do
    url "https://files.pythonhosted.org/packages/65/a4/bf9e06f34220fdfa95e091f59e09ebf3d6d4b2c74fc08949f0c3792aed7d/deepctl_cmd_skills-0.0.10.tar.gz"
    sha256 "bbf549a2dfef60a942a0e55015097e68f65b23ea45ef6a06f6dc69ee2b8d171f"
  end

  resource "deepctl-cmd-speak" do
    url "https://files.pythonhosted.org/packages/f9/e9/5ebe2fbf853094139ddba7939be6fe5228abfeca4132a4ffa996ccd59a47/deepctl_cmd_speak-0.0.6.tar.gz"
    sha256 "1f58bc8008523f2d6d7ec61b0079117c9b99094da1b54192676d2858b8bfaeca"
  end

  resource "deepctl-cmd-transcribe" do
    url "https://files.pythonhosted.org/packages/0d/23/46991cb6a33f226993b650dd9137636818aca3e7fd2b342e3fdc65c6f304/deepctl_cmd_transcribe-0.1.12.tar.gz"
    sha256 "5e4e16f8c78c6a1b12a853904ed2a13833fe598815462a4d09993e457815f8ff"
  end

  resource "deepctl-cmd-update" do
    url "https://files.pythonhosted.org/packages/77/eb/05c0200e0d54892c8533a41c6df6734363c2d151306140e3e3da279b21fe/deepctl_cmd_update-0.2.8.tar.gz"
    sha256 "7339f55f00b33e869d475a5e5463466f9e5e74ab2c2744bc0638fdb825c215bd"
  end

  resource "deepctl-cmd-usage" do
    url "https://files.pythonhosted.org/packages/23/db/bc685d086f003c2eac8a5aeacaf8fe4322348916be2f974b01b436c7425e/deepctl_cmd_usage-0.2.1.tar.gz"
    sha256 "e687cf059591e27f5f2b011e64247eb387586b84d4fb9336b82c817ff8da9f5c"
  end

  resource "deepctl-core" do
    url "https://files.pythonhosted.org/packages/9f/16/51e1111e7fc4ee27e427a30d78bba1b00a1d48deca91310bdc235558ad0f/deepctl_core-0.3.1.tar.gz"
    sha256 "3d55ee780f55ed60b5309b72b0dd64bfa58ed1ae9f6b822b6b4af074e6a8e0d4"
  end

  resource "deepctl-shared-utils" do
    url "https://files.pythonhosted.org/packages/b6/f0/ba7bb3297632a16946d7e6a262abeac16f5a8f54a957a7f71a12baf871a3/deepctl_shared_utils-0.1.14.tar.gz"
    sha256 "b8dc6399ffe939ae4a9e65f32dab72f9157e56c2b8461b995acdf59b869b3894"
  end

  resource "deepctl-telemetry" do
    url "https://files.pythonhosted.org/packages/68/90/f4981d6e04f36dc0f8b1e47ba1d377926f45b5af9f5fa70fcd055d0fd132/deepctl_telemetry-0.0.8.tar.gz"
    sha256 "061fbac036623429d784bfc896f287408b9baeb103f1ef04dd4d4a80a2fefe7b"
  end

  resource "deepgram-captions" do
    url "https://files.pythonhosted.org/packages/ee/af/7e184a69de5a83e03a1b5d3d325d82bc19156618011ae366079fda556180/deepgram_captions-2.0.0.tar.gz"
    sha256 "0f0bde3391c3f40be9fdfc9e42a7cf89a82b8a460aa62d24ddd8e55a100a6dd3"
  end

  resource "deepgram-sdk" do
    url "https://files.pythonhosted.org/packages/a9/7c/276f6eaafa8655bdd85850e7b1dbdd3c049ba46425386f35466b607d5be4/deepgram_sdk-7.18.0.tar.gz"
    sha256 "04191ade5b0a7719ee7d562f7e2ca7c746f67b016cc94a12ef554288afbfe6bd"
  end

  resource "ffmpeg-python" do
    url "https://files.pythonhosted.org/packages/dd/5e/d5f9105d59c1325759d838af4e973695081fbbc97182baf73afc78dec266/ffmpeg-python-0.2.0.tar.gz"
    sha256 "65225db34627c578ef0e11c8b1eb528bb35e024752f6f10b78c011f6f64c4127"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/2d/f5/c831fac6cc817d26fd54c7eaccd04ef7e0288806943f7cc5bbf69f3ac1f0/frozenlist-1.8.0.tar.gz"
    sha256 "3ede829ed8d842f6cd48fc7081d7a41001a56f1f38603f9d49bf3020d59a31ad"
  end

  resource "future" do
    url "https://files.pythonhosted.org/packages/a7/b2/4140c69c6a66432916b26158687e821ba631a4c9273c474343badf84d3ba/future-1.0.0.tar.gz"
    sha256 "bd2968309307861edae1458a4f8a4f3598c03be43b97521076aebf5d94c07b05"
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

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/7b/6b/29ef8e752f5854dcc267ded0652c475bec99b86f255957a0d4fcad657b18/multidict-7.2.1.tar.gz"
    sha256 "e8af3e6f1bdbc31fd762b094133b478b89988eaebc63cbe82b1d9e3bbd15cede"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/95/b0/c7453d0b6e2073c3264468b106ee1563750cecc910965e67357e3698c83e/numpy-2.5.4.tar.gz"
    sha256 "9a94cf751c9ad8ebaa835bcd3d40dacf8534ad086b88c38029b65123c7999d2a"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/7d/fa/3944b40b07da9ce895c0e6303a5ab7d53da063554f534556b134a54d6093/packaging-26.3.tar.gz"
    sha256 "94edc256424af38762eb31306eed28beb9f0efc50a8837492c9d6fd6004aed79"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/d7/9a/8475be631fb33ca1466915e70fd594c42a4e84b512db650eaa14f90fe75d/platformdirs-4.14.5.tar.gz"
    sha256 "32e9921db7385aa8169bee4fe9501923e5715ba9fb7ea3b9c69b0d8e0639f7a1"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/b3/9a/9fbf4e4ec0c2d7f1c32519fff782ef467859b8faa9fbc5331a96f6395d43/propcache-0.5.4.tar.gz"
    sha256 "ff6b113f50bc066a698db5d944d2c6dc7507168dd3341e255a8892fd0715a558"
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
    url "https://files.pythonhosted.org/packages/d0/31/21d21e0e38a8f5f7a7f0cde22820117b6d17d6bc36f348129527f915d7f4/pydantic_settings-2.16.2.tar.gz"
    sha256 "3dc08ffabed2bbd5dc2dd55ead7b78b4e4c5cd776aecd04310db5f1224caaf46"
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

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
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

  resource "typer" do
    url "https://files.pythonhosted.org/packages/6c/aa/0de7986aa1fa856adb961c67345189b97d13f6e250b34ba68884df865f07/typer-0.29.1.tar.gz"
    sha256 "ab6eb3880bf67ce96147734717f9ec333c06f66e361f3ea947d0be43da39f242"
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

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/75/16/e8be8e2fb175bbf41a0680381a319f1199fae256588241a2ac8677eafb49/yarl-1.25.1.tar.gz"
    sha256 "03dd38de09bc213e9a8b29761eec33ee1d5318dac0e49d8af36e4d27830e23a7"
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
