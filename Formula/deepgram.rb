# This formula is auto-generated from scripts/templates/deepgram.rb.template
# in https://github.com/deepgram/cli on every root `v*` release of deepctl.
# Manual edits to this file will be overwritten on the next release.
# To change the formula, edit the template in deepgram/cli — not this file.

class Deepgram < Formula
  include Language::Python::Virtualenv

  desc "Official Deepgram CLI for speech recognition and audio intelligence"
  homepage "https://github.com/deepgram/cli"
  url "https://files.pythonhosted.org/packages/36/df/a416d509c1fe7073426602b7ebe524c81fc1d9b10f14e050ae4843e655aa/deepctl-0.2.21.tar.gz"
  sha256 "59d2c3f47de9431ba447f01e9f86ea9b82cae01ff82780d57100ffe8e37880a4"
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
    url "https://files.pythonhosted.org/packages/26/30/f84a107a9c4331c14b2b586036f40965c128aa4fee4dda5d3d51cb14ad54/aiohappyeyeballs-2.6.1.tar.gz"
    sha256 "c3f9d0113123803ccadfdf3f0faa505bc78e6a72d1cc4806cbd719826e943558"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/77/9a/152096d4808df8e4268befa55fba462f440f14beab85e8ad9bf990516918/aiohttp-3.13.5.tar.gz"
    sha256 "9d98cc980ecc96be6eb4c1994ce35d28d8b1f5e5208a23b421187d1209dbb7d1"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/61/62/06741b579156360248d1ec624842ad0edf697050bbaf7c3e46394e106ad1/aiosignal-1.4.0.tar.gz"
    sha256 "f47eecd9468083c2029cc99945502cb7708b082c232f9aca65da147157b251c7"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/57/ba/046ceea27344560984e26a590f90bc7f4a75b06701f653222458922b558c/annotated_doc-0.0.4.tar.gz"
    sha256 "fbcda96e87e9c92ad167c2e53839e57503ecfda18804ea28102353485033faa4"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/19/14/2c5dd9f512b66549ae92767a9c7b330ae88e1932ca57876909410251fe13/anyio-4.13.0.tar.gz"
    sha256 "334b70e641fd2221c1505b3890c69882fe4a2df910cba14d97019b90b24439dc"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/25/ee/6caf7a40c36a1220410afe15a1cc64993a1f864871f698c0f93acb72842a/certifi-2026.4.22.tar.gz"
    sha256 "8d455352a37b71bf76a79caa83a3d6c25afee4a385d632127b6afb3963f1c580"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/eb/56/b1ba7935a17738ae8453301356628e8147c79dbb825bcbc73dc7401f9846/cffi-2.0.0.tar.gz"
    sha256 "44d1b5909021139fe36001ae048dbdde8214afa20200eda0f64c068cac5d5529"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e7/a1/67fe25fac3c7642725500a3f6cfe5821ad557c3abb11c9d20d12c7008d3e/charset_normalizer-3.4.7.tar.gz"
    sha256 "ae89db9e5f98a11a4bf50407d4363e7b09b31e55bc117b4f7d80aab97ba009e5"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/bb/63/f9e1ea081ce35720d8b92acde70daaedace594dc93b693c869e0d5910718/click-8.3.3.tar.gz"
    sha256 "398329ad4837b2ff7cbe1dd166a4c0f8900c3ca3a218de04466f38f6497f18a2"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/9f/a9/db8f313fdcd85d767d4973515e1db101f9c71f95fced83233de224673757/cryptography-48.0.0.tar.gz"
    sha256 "5c3932f4436d1cccb036cb0eaef46e6e2db91035166f1ad6505c3c9d5a635920"
  end

  resource "deepctl-cmd-api" do
    url "https://files.pythonhosted.org/packages/1c/24/b1f5c904e78ec4c9bc1dfede1e8182676f622af0c24265874fc91a6f44bc/deepctl_cmd_api-0.0.2.tar.gz"
    sha256 "f0280d82c0bee46310a6ed987a19422dd5ddbc192cfff7c67cb2d6f548e475cc"
  end

  resource "deepctl-cmd-billing" do
    url "https://files.pythonhosted.org/packages/23/2a/3a527ee74f76b21e7b850fb84ccf7e55ad71570eb1ec6c4b0e3af8e5f8ee/deepctl_cmd_billing-0.0.2.tar.gz"
    sha256 "76aac55e6c51618fb63402ce8ee04140750f62ef4952ed35066c4a27d5f0bec7"
  end

  resource "deepctl-cmd-completion" do
    url "https://files.pythonhosted.org/packages/d3/2f/8c029562866a09597156d7f34f080c9fe76adf8273e90b6094f108d7ae52/deepctl_cmd_completion-0.0.2.tar.gz"
    sha256 "3c5fa4eb4137b22f05bee292f7226627296cf340ab31d94ab9dbe6c457a3f590"
  end

  resource "deepctl-cmd-debug" do
    url "https://files.pythonhosted.org/packages/0a/85/7c706d23fb6240dd19d36be0b6b72cb9442dd6b1af5d6a3081bb648bf7ad/deepctl_cmd_debug-0.1.12.tar.gz"
    sha256 "fd204502f78c0e2dd2e53d1bce3c836803b5a361665456fd95c5bdd2ce8f0526"
  end

  resource "deepctl-cmd-debug-audio" do
    url "https://files.pythonhosted.org/packages/bb/4c/9496a5986eb9af5065dffc4a52211f520ed86b95e9a9aed40b987a889432/deepctl_cmd_debug_audio-0.1.12.tar.gz"
    sha256 "56948dcd1e1a73c55a32c9d06b2d8b3c1d76864d1cb342b70bde39949928007e"
  end

  resource "deepctl-cmd-debug-browser" do
    url "https://files.pythonhosted.org/packages/e2/ac/745abce9da65e5deef19074b484b31190938a7379767b872f7c138cfc18a/deepctl_cmd_debug_browser-0.1.11.tar.gz"
    sha256 "8b96bcf5f3a9e143a9e9cdea4a3d98ca431e7a399d2abe2c7831d9f8dbd70f23"
  end

  resource "deepctl-cmd-debug-network" do
    url "https://files.pythonhosted.org/packages/23/6c/293db5339712b08f8ffcd318fdfa577a3a30ad13806bf307255be0b11c91/deepctl_cmd_debug_network-0.1.11.tar.gz"
    sha256 "2b4436cf62ce0c2873427fc2da5525be2dcb0afc4e1752279f05412fe558ecfd"
  end

  resource "deepctl-cmd-debug-probe" do
    url "https://files.pythonhosted.org/packages/f9/12/079511eef3f64c6db8ad6e3f10366a75f048215c21056ae1877b71836af2/deepctl_cmd_debug_probe-0.0.2.tar.gz"
    sha256 "8ebbc0a648ed56638eec67930c54afaf8b649c415cc970b72bcb7e3958ffb11a"
  end

  resource "deepctl-cmd-debug-toolkit" do
    url "https://files.pythonhosted.org/packages/27/f1/f83e5f76591ee1ff304b8bbb588b2029760fe790a615e378e06a1691bee3/deepctl_cmd_debug_toolkit-0.1.0.tar.gz"
    sha256 "f58f26ed1d77d3f1504a07f6fa2e6dd8800d5d525810dd027164e58841aff5ca"
  end

  resource "deepctl-cmd-ffprobe" do
    url "https://files.pythonhosted.org/packages/88/d0/0f6733255791f3b1a3412855ce4f2f4aaf93c04925832c2e42b6a1f58d36/deepctl_cmd_ffprobe-0.0.2.tar.gz"
    sha256 "9fa34d98455522a677727d029b6590ec4a173ebff086c9a52798656d6b14db35"
  end

  resource "deepctl-cmd-init" do
    url "https://files.pythonhosted.org/packages/11/17/d07678679ac0eaa0ba0a328eed811c5ee3d688e42e917cbea65a21f38950/deepctl_cmd_init-0.0.4.tar.gz"
    sha256 "4944ab2f27b9a52ede7388d94c69f97fdfad7f39f38fdd3c85a0a8e74753875d"
  end

  resource "deepctl-cmd-keys" do
    url "https://files.pythonhosted.org/packages/63/42/3cef553537e43081800265caf4fd832af8f7037a3f900197456d7a4d524a/deepctl_cmd_keys-0.0.3.tar.gz"
    sha256 "fbff1615028ec7edb1c91c2bd85dde7f18741d72eed214a3c307820f89f5ffbe"
  end

  resource "deepctl-cmd-listen" do
    url "https://files.pythonhosted.org/packages/5a/21/e42d7851bbb80fad3a832c0ed2c7b6ef2b1b19bb5855d27072b06a02d8e7/deepctl_cmd_listen-0.0.11.tar.gz"
    sha256 "05259188b25ccde8d3bf509ba3b7672f97fab67f24068141a8743a82b93a2a2f"
  end

  resource "deepctl-cmd-login" do
    url "https://files.pythonhosted.org/packages/9f/d8/bfbaaf917286010ed3edeb2d5bcf99a47c6698ec0a1e14b46ef49c781e6a/deepctl_cmd_login-0.1.14.tar.gz"
    sha256 "00f11175dc9ea95e629c09cd058df895d3be3340784f04bdf132cf6bf03eb839"
  end

  resource "deepctl-cmd-mcp" do
    url "https://files.pythonhosted.org/packages/49/7c/49468eb5d59d630788bd6ff10b38608374b864065b34e459c4cf724a7d01/deepctl_cmd_mcp-0.1.13.tar.gz"
    sha256 "614168cd115ae76b7d42d5c5c548cadd69c13af0160336970da8f68c2c55a9d3"
  end

  resource "deepctl-cmd-members" do
    url "https://files.pythonhosted.org/packages/14/81/d68eeb5b1613626df84df9fe4b85b68514d4025c0bdc472b23dd612a146f/deepctl_cmd_members-0.0.3.tar.gz"
    sha256 "cc0c385400904f2cbe56364905c02322900c96eb4ada03943db21758609c461d"
  end

  resource "deepctl-cmd-models" do
    url "https://files.pythonhosted.org/packages/54/0b/7c8864092caf3496e7c6c1ff8e4cf4a752b51da2d0059d8b69d04e640258/deepctl_cmd_models-0.0.2.tar.gz"
    sha256 "e198182386034ec19f558583f721fdd9650d8f5b00afee172c07ccf5b12da31b"
  end

  resource "deepctl-cmd-plugin" do
    url "https://files.pythonhosted.org/packages/8b/5b/54fa1888e46f0f2d63cbf274ca041f2735f46db96a74306f92f9994d14fa/deepctl_cmd_plugin-0.1.11.tar.gz"
    sha256 "37b16da2b4bb9dea7e71ac56cbe3c80e66465c649478afe7928c92fe0722394b"
  end

  resource "deepctl-cmd-projects" do
    url "https://files.pythonhosted.org/packages/3e/53/49f935c1747d2b34db749feba1077232f9cc39e988e99536ba2c6a518e90/deepctl_cmd_projects-0.1.11.tar.gz"
    sha256 "232aad82c3fb098c9207747e5f8c1a21c01efe4992e708d08affa05d00c01f06"
  end

  resource "deepctl-cmd-read" do
    url "https://files.pythonhosted.org/packages/50/aa/e3ec350e3d8c31be7565a2ba1c0d09e8e2f57f9ac661cb4c89ab0c948114/deepctl_cmd_read-0.0.2.tar.gz"
    sha256 "4218c499d87723ac6f66a620793d7ee9f95bc29e8bee7459fe90b0ef354d188f"
  end

  resource "deepctl-cmd-requests" do
    url "https://files.pythonhosted.org/packages/d2/f9/d2d51c7362cb0024efa804cb35252844450368b9ebcd3bc1d4899e9473f6/deepctl_cmd_requests-0.0.2.tar.gz"
    sha256 "0ed232572bed0741b4b46700183923e788fe010b07738125598023e0f38562d6"
  end

  resource "deepctl-cmd-skills" do
    url "https://files.pythonhosted.org/packages/06/00/97fea13442d08f8692ad2164e1212e342e20279796ea29cfd5ec4e5493f6/deepctl_cmd_skills-0.0.5.tar.gz"
    sha256 "d8c933d7afee124be5965d6f49f6b68b255f1b55d934e8bb3fce98ef3747fd9a"
  end

  resource "deepctl-cmd-speak" do
    url "https://files.pythonhosted.org/packages/40/94/4af96948507992e0d526193b317eff34c364b02256c8ac67f44bc81cb7d1/deepctl_cmd_speak-0.0.2.tar.gz"
    sha256 "bd88bbe39da8b0c728851c27bc36b443edb1d6aabd1c8404c23e58c8aa809850"
  end

  resource "deepctl-cmd-transcribe" do
    url "https://files.pythonhosted.org/packages/0d/23/46991cb6a33f226993b650dd9137636818aca3e7fd2b342e3fdc65c6f304/deepctl_cmd_transcribe-0.1.12.tar.gz"
    sha256 "5e4e16f8c78c6a1b12a853904ed2a13833fe598815462a4d09993e457815f8ff"
  end

  resource "deepctl-cmd-update" do
    url "https://files.pythonhosted.org/packages/76/c4/16fbb4715d3acdcf1d518015573c90d395fd27e95e1c7aa22c21111e5742/deepctl_cmd_update-0.2.4.tar.gz"
    sha256 "29ed1ce4a3c41e518bb56da7bda92f1007618e05af226cc4e1126dc790d1a924"
  end

  resource "deepctl-cmd-usage" do
    url "https://files.pythonhosted.org/packages/db/15/92f1e59745221950c94b486ecc0a302adfc486e3388b2f1d8ad63c8c9f12/deepctl_cmd_usage-0.1.11.tar.gz"
    sha256 "09c31f467c92648a5704a271bf514256dcefff642c2ecdb4c5b3ec3bed576645"
  end

  resource "deepctl-core" do
    url "https://files.pythonhosted.org/packages/b6/94/b7915ea344e2a1c74355e194f38d7480a53065e07f8492c1854d6da8a649/deepctl_core-0.2.10.tar.gz"
    sha256 "58685c81b9e513cac9a1ff2410f52b2b0497ae224102ed23a9a7a8fe3a775246"
  end

  resource "deepctl-shared-utils" do
    url "https://files.pythonhosted.org/packages/83/f7/544ff6e61ac145a7660e64e98ab2ef9d2d3c18118ca9e532ce88d6fefc51/deepctl_shared_utils-0.1.11.tar.gz"
    sha256 "4e317a1b168ff60180f9e03c7d3b027a108c29a04e69b740a3036c0c43102614"
  end

  resource "deepctl-telemetry" do
    url "https://files.pythonhosted.org/packages/af/1d/09829b4f137f945f0ba46f88a4c6cc51daac6d0f5e9ef4f094d44e4ade0e/deepctl_telemetry-0.0.2.tar.gz"
    sha256 "9dc12d96b7b3dbd4a617d9148700433c0de4d9bd66f0b798aba8bb4c68c1b1d7"
  end

  resource "deepgram-captions" do
    url "https://files.pythonhosted.org/packages/ee/af/7e184a69de5a83e03a1b5d3d325d82bc19156618011ae366079fda556180/deepgram_captions-2.0.0.tar.gz"
    sha256 "0f0bde3391c3f40be9fdfc9e42a7cf89a82b8a460aa62d24ddd8e55a100a6dd3"
  end

  resource "deepgram-mcp" do
    url "https://files.pythonhosted.org/packages/ea/ad/828d8a554df8125c5e63d9056c1765705b6e64a139e5cac36fe31d27e859/deepgram_mcp-0.1.1.tar.gz"
    sha256 "907955b48130f57d91a81342f1adeeb7a37153d042e1e7affc8fc85f90e3bf54"
  end

  resource "deepgram-sdk" do
    url "https://files.pythonhosted.org/packages/9e/b3/448f365c2c845202cfe3815e3d11a4303532401200271ebda66a6ecf5c5c/deepgram_sdk-7.1.0.tar.gz"
    sha256 "896fb9aeed914d5bbe20a832c81d5c1a074643ea451456e24df10c3b1384c4a0"
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
    url "https://files.pythonhosted.org/packages/ce/cc/762dfb036166873f0059f3b7de4565e1b5bc3d6f28a414c13da27e442f99/idna-3.13.tar.gz"
    sha256 "585ea8fe5d69b9181ec1afba340451fba6ba764af97026f92a91d4eef164a242"
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
    url "https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz"
    sha256 "04a21681d6fbb623de53f6f364d352309d4094dd4194040a10fd51833e418d49"
  end

  resource "mcp" do
    url "https://files.pythonhosted.org/packages/8b/eb/c0cfc62075dc6e1ec1c64d352ae09ac051d9334311ed226f1f425312848a/mcp-1.27.0.tar.gz"
    sha256 "d3dc35a7eec0d458c1da4976a48f982097ddaab87e278c5511d5a4a56e852b83"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/a2/f7/139d22fef48ac78127d18e01d80cf1be40236ae489769d17f35c3d425293/more_itertools-11.0.2.tar.gz"
    sha256 "392a9e1e362cbc106a2457d37cabf9b36e5e12efd4ebff1654630e76597df804"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/1a/c2/c2d94cbe6ac1753f3fc980da97b3d930efe1da3af3c9f5125354436c073d/multidict-6.7.1.tar.gz"
    sha256 "ec6652a1bee61c53a3e5776b6049172c53b6aaba34f18c9ad04f82712bac623d"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/d7/9f/b8cef5bffa569759033adda9481211426f12f53299629b410340795c2514/numpy-2.4.4.tar.gz"
    sha256 "2d390634c5182175533585cc89f3608a4682ccb173cc9bb940b2881c8d6f8fa0"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d7/f1/e7a6dd94a8d4a5626c03e4e99c87f241ba9e350cd9e6d75123f992427270/packaging-26.2.tar.gz"
    sha256 "ff452ff5a3e828ce110190feff1178bb1f2ea2281fa2075aadb987c2fb221661"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/9f/4a/0883b8e3802965322523f0b200ecf33d31f10991d0401162f4b23c698b42/platformdirs-4.9.6.tar.gz"
    sha256 "3bfa75b0ad0db84096ae777218481852c0ebc6c727b3168c1b9e0118e458cf0a"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/9e/da/e9fc233cf63743258bff22b3dfa7ea5baef7b5bc324af47a0ad89b8ffc6f/propcache-0.4.1.tar.gz"
    sha256 "f48107a8c637e80362555f37ecf49abe20370e557cc4ab374f04ec4423c97c3d"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/69/44/36f1a6e523abc58ae5f928898e4aca2e0ea509b5aa6f6f392a5d882be928/pydantic-2.12.5.tar.gz"
    sha256 "4d351024c75c0f085a9febbb665ce8c0c6ec5d30e903bdb6394b7ede26aebb49"
  end

  resource "pydantic_core" do
    url "https://files.pythonhosted.org/packages/71/70/23b021c950c2addd24ec408e9ab05d59b035b39d97cdc1130e1bce647bb6/pydantic_core-2.41.5.tar.gz"
    sha256 "08daa51ea16ad373ffd5e7606252cc32f07bc72b28284b6bc9c6df804816476e"
  end

  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/42/98/c8345dccdc31de4228c039a98f6467a941e39558da41c1744fbe29fa5666/pydantic_settings-2.14.0.tar.gz"
    sha256 "24285fd4b0e0c06507dd9fdfd331ee23794305352aaec8fc4eb92d4047aeb67d"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/c3/b2/bc9c9196916376152d655522fdcebac55e66de6603a76a02bca1b6414f6c/pygments-2.20.0.tar.gz"
    sha256 "6757cd03768053ff99f3039c1a36d6c0aa0b263438fcab17520b30a303a82b5f"
  end

  resource "PyJWT" do
    url "https://files.pythonhosted.org/packages/c2/27/a3b6e5bf6ff856d2509292e95c8f57f0df7017cf5394921fc4e4ef40308a/pyjwt-2.12.1.tar.gz"
    sha256 "c74a7a2adf861c04d002db713dd85f84beb242228e671280bf709d765b03672b"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/82/ed/0301aeeac3e5353ef3d94b6ec08bbcabd04a72018415dcb29e588514bba8/python_dotenv-1.2.2.tar.gz"
    sha256 "2c371a91fbd7ba082c2c1dc1f8bf89ca22564a087c2c287cd9b662adde799cf3"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/69/9b/f23807317a113dc36e74e75eb265a02dd1a4d9082abc3c1064acd22997c4/python_multipart-0.0.27.tar.gz"
    sha256 "9870a6a8c5a20a5bf4f07c017bd1489006ff8836cff097b6933355ee2b49b602"
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
    url "https://files.pythonhosted.org/packages/5f/a4/98b9c7c6428a668bf7e42ebb7c79d576a1c3c1e3ae2d47e674b468388871/requests-2.33.1.tar.gz"
    sha256 "18817f8c57c6263968bc123d237e3b8b08ac046f5456bd1e307ee8f4250d3517"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/20/af/3f2f423103f1113b36230496629986e0ef7e199d2aa8392452b484b38ced/rpds_py-0.30.0.tar.gz"
    sha256 "dd8ff7cf90014af0c0f787eea34794ebf6415242ee1d6fa91eaba725cc441e84"
  end

  resource "sentry-sdk" do
    url "https://files.pythonhosted.org/packages/65/e0/9bf5e5fc7442b10880f3ec0eff0ef4208b84a099606f343ec4f5445227fb/sentry_sdk-2.59.0.tar.gz"
    sha256 "cd265808ef8bf3f3edf69b527c0a0b2b6b1322762679e55b8987db2e9584aec1"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "sounddevice" do
    url "https://files.pythonhosted.org/packages/2a/f9/2592608737553638fca98e21e54bfec40bf577bb98a61b2770c912aab25e/sounddevice-0.5.5.tar.gz"
    sha256 "22487b65198cb5bf2208755105b524f78ad173e5ab6b445bdab1c989f6698df3"
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/38/82/10cdfab4ab663a6b6bd624d33f55b2cfa41af5105be033a6d5d135a92c5f/sse_starlette-3.4.2.tar.gz"
    sha256 "2f9a7f51ed84395a0427fb9f66cb1ec11f7899d977a72cbc9070b962a2e14489"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/81/69/17425771797c36cded50b7fe44e850315d039f28b15901ab44839e70b593/starlette-1.0.0.tar.gz"
    sha256 "6a4beaf1f81bb472fd19ea9b918b50dc3a77a6f2e190a12954b25e6ed5eea149"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/e4/51/9aed62104cea109b820bbd6c14245af756112017d309da813ef107d42e7e/typer-0.25.1.tar.gz"
    sha256 "9616eb8853a09ffeabab1698952f33c6f29ffdbceb4eaeecf571880e8d7664cc"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/55/e3/70399cb7dd41c10ac53367ae42139cf4b1ca5f36bb3dc6c9d33acdb43655/typing_inspection-0.4.2.tar.gz"
    sha256 "ba561c48a67c5958007083d386c3295464928b01faa735ab8547c5692e87f464"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/53/0c/06f8b233b8fd13b9e5ee11424ef85419ba0d8ba0b3138bf360be2ff56953/urllib3-2.7.0.tar.gz"
    sha256 "231e0ec3b63ceb14667c67be60f2f2c40a518cb38b03af60abc813da26505f4c"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/1f/93/041fca8274050e40e6791f267d82e0e2e27dd165627bd640d3e0e378d877/uvicorn-0.46.0.tar.gz"
    sha256 "fb9da0926999cc6cb22dc7cd71a94a632f078e6ae47ff683c5c420750fb7413d"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/04/24/4b2031d72e840ce4c1ccb255f693b15c334757fc50023e4db9537080b8c4/websockets-16.0.tar.gz"
    sha256 "5f6261a5e56e8d5c42a4497b364ea24d94d9563e8fbd44e78ac40879c60179b5"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/23/6e/beb1beec874a72f23815c1434518bfc4ed2175065173fb138c3705f658d4/yarl-1.23.0.tar.gz"
    sha256 "53b1ea6ca88ebd4420379c330aea57e258408dd0df9af0992e5de2078dc9f5d5"
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
