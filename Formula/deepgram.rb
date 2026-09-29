# This formula is auto-generated from scripts/templates/deepgram.rb.template
# in https://github.com/deepgram/cli on every root `v*` release of deepctl.
# Manual edits to this file will be overwritten on the next release.
# To change the formula, edit the template in deepgram/cli — not this file.

class Deepgram < Formula
  include Language::Python::Virtualenv

  desc "Official Deepgram CLI for speech recognition and audio intelligence"
  homepage "https://github.com/deepgram/cli"
  url "https://files.pythonhosted.org/packages/10/1f/5e2a3500cb3bc16bcf49dd187dd5d305f43adb22529b246f2bd34750f757/deepctl-0.3.1.tar.gz"
  sha256 "d858d571ff0d32f8c22e704f6d7b340a4fad44fc3f48702a3c3593501da1c9e6"
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
    url "https://files.pythonhosted.org/packages/58/d9/22ce5786ac0c1653ae8b6c23bded02c1686d11f0dbb45b31ce128e0df985/aiohttp-3.14.3.tar.gz"
    sha256 "9491196535a88924a60afd5b5f434b5b203b6cc616250878dbdb223a8f7844bc"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/61/62/06741b579156360248d1ec624842ad0edf697050bbaf7c3e46394e106ad1/aiosignal-1.4.0.tar.gz"
    sha256 "f47eecd9468083c2029cc99945502cb7708b082c232f9aca65da147157b251c7"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/5a/8e/38aa427ed5402449e226975b649c5dc73ccadfefeb95e6aecb8f8ea4b6b6/annotated_doc-0.0.5.tar.gz"
    sha256 "c7e58ce09192557605d8bbd92836d7e1d520ac9580096042c0bfd197efacf1bb"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/5f/56/a8120250d128bed162cd73c76d45f6ef9991f3e068f62a8ee060afa3104a/annotated_types-0.8.0.tar.gz"
    sha256 "13b2beaad985e05e2d6407ee4c4f35590b11f8d693a258a561055cac8f64cab7"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a9/d2/f4d173e22df740bc37b1db102b386ba719b66e95b0f0d751f556b387e6d2/anyio-4.15.1.tar.gz"
    sha256 "9f28306018cbd6d329e64a36d58256edff76dd996fe423bc957326e578b82a94"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/a3/c2/24167ea9858356b47a87a50d39908bfdb72ceeefe0041586e704e5376b3a/certifi-2026.7.22.tar.gz"
    sha256 "741e2c3b351ddf169a738da9f2c048608ff7f2c5cc02f1ebc6b118bb090d5d55"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/9e/ef/008a1939e372c06329a3fce4279c02f328488f3526744906eeec3da7ad5f/cffi-2.1.1.tar.gz"
    sha256 "dd31f52ea1086513bb9df30f8fcee9b8918323ae067a3d5b78bc826a000712be"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e5/3f/143b048436775b0f76ac3eec145c019e8173ccc2885c8f20319b996d5e83/charset_normalizer-3.5.1.tar.gz"
    sha256 "6117b84ea48435e5356dc737f5121485c30920ba43375fa7b434fd753df0eac3"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/c7/0e/7fa0ef50764b67090eca4114772a2abf8b6148198475e54c660b97caeee6/click-8.5.0.tar.gz"
    sha256 "ba0d2089de75ea0310e2dde03160e6ca10009947fb95a182f9b54021bb272e34"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/bb/ad/5d6702db60b1e40b41ef513b6967ff5848f307d50f8449baf1634f5908f1/cryptography-50.0.1.tar.gz"
    sha256 "5dd9bda1c12b4162f6ff568eeb5e0ff956c28d14406e875cfe8a63a2d414ff20"
  end

  resource "deepctl-cmd-api" do
    url "https://files.pythonhosted.org/packages/1c/24/b1f5c904e78ec4c9bc1dfede1e8182676f622af0c24265874fc91a6f44bc/deepctl_cmd_api-0.0.2.tar.gz"
    sha256 "f0280d82c0bee46310a6ed987a19422dd5ddbc192cfff7c67cb2d6f548e475cc"
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
    url "https://files.pythonhosted.org/packages/0a/85/7c706d23fb6240dd19d36be0b6b72cb9442dd6b1af5d6a3081bb648bf7ad/deepctl_cmd_debug-0.1.12.tar.gz"
    sha256 "fd204502f78c0e2dd2e53d1bce3c836803b5a361665456fd95c5bdd2ce8f0526"
  end

  resource "deepctl-cmd-debug-audio" do
    url "https://files.pythonhosted.org/packages/45/b7/bd32591de4a1775e4d9af357d121ba86794abd4b33858a4de397d7ca9be5/deepctl_cmd_debug_audio-0.1.13.tar.gz"
    sha256 "e5428605c5e1be3cd20f535a0670c8271e4c686382baf88795ece569afcc353a"
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
    url "https://files.pythonhosted.org/packages/96/46/7851475bff33b12b0311d3238cb95ddf501e3629ee8cc227829058feabcd/deepctl_cmd_keys-0.1.0.tar.gz"
    sha256 "ae4872f7d15517b4c716c4861b58e8fa1da5d6ce27eba8a3fdd8a4780d8cc042"
  end

  resource "deepctl-cmd-listen" do
    url "https://files.pythonhosted.org/packages/d0/9b/27c05508fe7f1e2018b2ed38f92db437613e6cf5bfbe76039aef93bedefb/deepctl_cmd_listen-0.0.14.tar.gz"
    sha256 "5ceee550bffa4289933b685dce4a57529a60d46e2da7e292c7ef5270f745fd1c"
  end

  resource "deepctl-cmd-login" do
    url "https://files.pythonhosted.org/packages/79/48/c08a11bf7594abf68b9c18b0013435d039e4839b40af4570931100c51022/deepctl_cmd_login-0.1.18.tar.gz"
    sha256 "af4a89c3a92193c75bb27f12bc8efe656bba5574c8e4324b03c35ad8e494566d"
  end

  resource "deepctl-cmd-mcp" do
    url "https://files.pythonhosted.org/packages/7a/4f/d10506da751ea2d1048c3bbf2070ba30f991c6db6205f125443bddc90f01/deepctl_cmd_mcp-0.1.15.tar.gz"
    sha256 "434545cc0ca011a3baf9d0ef53b53dad81e34700f6a8ce868d52a912ca841b04"
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
    url "https://files.pythonhosted.org/packages/ca/14/cd0e0a7624643390440c971227227727c5202f0aa882174850f8f3c247da/deepctl_cmd_plugin-0.1.13.tar.gz"
    sha256 "e94a84007d018ed0707384a8d4e05bb1a1cfcee47f2c98a0b00a351574c6262d"
  end

  resource "deepctl-cmd-projects" do
    url "https://files.pythonhosted.org/packages/fd/02/253596c8cc19afc3faaa488c02a769e630b58822451b51d65cf5b6b8ed9c/deepctl_cmd_projects-0.2.0.tar.gz"
    sha256 "c9fb44198297c7fe088789e569d3628697f01a0a69ac96e056b9b9b99bf04656"
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
    url "https://files.pythonhosted.org/packages/28/e3/a32aae17aab67112e377d0ccc9339da1583ace8b4b162b21d2e70cc10298/deepctl_cmd_skills-0.0.8.tar.gz"
    sha256 "455e485d05948f1fda24c857b4194fa4aa93e118367d3cfa48b2c738d79265b4"
  end

  resource "deepctl-cmd-speak" do
    url "https://files.pythonhosted.org/packages/c0/af/621c0e8a331133ad4577e262caeebc445f38122ed0447b6964d7cd8ec638/deepctl_cmd_speak-0.0.4.tar.gz"
    sha256 "1967df23a300757602d5874be35c79e90e37505000f81f98d2847e2d7cfa5f8d"
  end

  resource "deepctl-cmd-transcribe" do
    url "https://files.pythonhosted.org/packages/0d/23/46991cb6a33f226993b650dd9137636818aca3e7fd2b342e3fdc65c6f304/deepctl_cmd_transcribe-0.1.12.tar.gz"
    sha256 "5e4e16f8c78c6a1b12a853904ed2a13833fe598815462a4d09993e457815f8ff"
  end

  resource "deepctl-cmd-update" do
    url "https://files.pythonhosted.org/packages/de/16/8b9696cedb5ef5aaec05f70cc6971928b036cef6bb1423b32a8b416af59b/deepctl_cmd_update-0.2.7.tar.gz"
    sha256 "f61e42bd6640c8e20c285a962afc513a85cf27b9a98e18a18f3857fbb563ef88"
  end

  resource "deepctl-cmd-usage" do
    url "https://files.pythonhosted.org/packages/26/fa/d1bc3394ea08920fd9c5c57a1b2781ff63d6f22c5f50d3fd35077032b404/deepctl_cmd_usage-0.2.0.tar.gz"
    sha256 "e502143cfe86794130fa590cc842fea6c5e197e584a06ec4190dc1ba7af626f7"
  end

  resource "deepctl-core" do
    url "https://files.pythonhosted.org/packages/1b/ba/eb8fc2c076be99e3d1153d7b91c68c525159a79cdec92097c7f63bca12d5/deepctl_core-0.2.17.tar.gz"
    sha256 "35a3cb9c48194dea20b3a542d3a9006db98590a9822a298cf87fbe012ba2388f"
  end

  resource "deepctl-shared-utils" do
    url "https://files.pythonhosted.org/packages/77/a2/a0116365b23a025152167b9c21e3f6be3ab005a0e054856b07f0687f6f1d/deepctl_shared_utils-0.1.12.tar.gz"
    sha256 "b52d1a6bb29d83c8d7efc001e9f4f163049c40d3160471556a15a4378054564e"
  end

  resource "deepctl-telemetry" do
    url "https://files.pythonhosted.org/packages/c1/6c/ff2b3d3a3fafe2d597dc0e1bf9d8672b8e19a8d2be6ac90da6138fc8d957/deepctl_telemetry-0.0.6.tar.gz"
    sha256 "3f0dd6db80b23b703d3fe2c5c61ed31c4ba0026540183d75b410f77809280546"
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
    url "https://files.pythonhosted.org/packages/fc/bc/3c6cf6b9f2888b43425eb5229718cbf390125ec47189c51bb2ec667ea25f/deepgram_sdk-7.11.0.tar.gz"
    sha256 "d59a162ac2b41a65e5923b0e190dcc3e470a5e9791344fd2f791022e40883734"
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
    url "https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz"
    sha256 "04a21681d6fbb623de53f6f364d352309d4094dd4194040a10fd51833e418d49"
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
    url "https://files.pythonhosted.org/packages/de/1d/f4da6f02cdffe04d6362210b807146a26044c88d839208aec273bb0d9184/more_itertools-11.1.0.tar.gz"
    sha256 "48e8f4d9e7e5878571ecf6f2b4e57634f93cd474cc8cfbd2376f2d11b396e30d"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/d6/99/1d4d69c3512d0ddbfa3a1b69cfd9a151012ab2eb4eabbb096201b1f0b7d8/multidict-6.9.1.tar.gz"
    sha256 "0f06e60fa190aa7abd0914c2a766736fdc8e9f34878c4346338534b73d1b20e2"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/13/01/11703282db468b85f6f7b8c7f22d058de5970d5c7e60a3a8aaa313c3de36/numpy-2.5.3.tar.gz"
    sha256 "df2d5874ff183595a4ba404edd04f6bd9b5505c1d7708573f6a6c17489a67563"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/7d/fa/3944b40b07da9ce895c0e6303a5ab7d53da063554f534556b134a54d6093/packaging-26.3.tar.gz"
    sha256 "94edc256424af38762eb31306eed28beb9f0efc50a8837492c9d6fd6004aed79"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/c3/8a/84ef03c1c83eacd7cc4540b05428a93b5cd4e42f62fb0b98ac2cb6ed3a6d/platformdirs-4.12.1.tar.gz"
    sha256 "38da801a4af303033cbffccb39030db22bf0473e6414309b02acebeee7ca8bf1"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/b3/9a/9fbf4e4ec0c2d7f1c32519fff782ef467859b8faa9fbc5331a96f6395d43/propcache-0.5.4.tar.gz"
    sha256 "ff6b113f50bc066a698db5d944d2c6dc7507168dd3341e255a8892fd0715a558"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/53/ef/fc4f868f4e2cee79f863883abffceff107875f569b848507319842d2a681/pydantic-2.13.5.tar.gz"
    sha256 "51a9c5f7b2f8e636f04c6cada605d9b6a3bf1348fdf945a3d8869b19bba0ee08"
  end

  resource "pydantic_core" do
    url "https://files.pythonhosted.org/packages/af/f9/8a06bea35ef8daf588f707784c973a7046e0034c8d8cfb08828eeffb8b75/pydantic_core-2.46.5.tar.gz"
    sha256 "10416c15b8839ecc4ef4d0885da76da6fd0f67333a0eb8aff6d93c4b8f2910fc"
  end

  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/68/ca/31c57507b13119d7d3cfa1576dad2911a4861e3be07b579395f4e9d393f9/pydantic_settings-2.15.0.tar.gz"
    sha256 "694b793e84f766ba76a90ebdefc01d0a9a045dab0382bee70393da93712ad117"
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
    url "https://files.pythonhosted.org/packages/6a/53/ed9d74092561d4b01a2ef1349d52cdbc135e526c245f366b089cfca6de49/python_dotenv-1.2.3.tar.gz"
    sha256 "a20a594dabeaa385725aa239d5244871c143ecb356add8a20fcf23773a6c3a35"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/5b/42/55c32bb9b12693c092ad250a0e82edb5b31ddeda6eb772de5f308b3804ad/python_multipart-0.0.32.tar.gz"
    sha256 "be54b7f3fa167bb83e4fcd936b887b708f4e57fe75911c02aebf53efaf8d938e"
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
    url "https://files.pythonhosted.org/packages/aa/2a/9618a122aeb2a169a28b03889a2995fe297588964333d4a7d67bdf46e147/rpds_py-2026.6.3.tar.gz"
    sha256 "1cebd1337c242e4ec2293e541f712b2da849b29f48f0c293684b71c0632625d4"
  end

  resource "SecretStorage" do
    url "https://files.pythonhosted.org/packages/1c/03/e834bcd866f2f8a49a85eaff47340affa3bfa391ee9912a952a1faa68c7b/secretstorage-3.5.0.tar.gz"
    sha256 "f04b8e4689cbce351744d5537bf6b1329c6fc68f91fa666f60a380edddcd11be"
  end

  resource "sentry-sdk" do
    url "https://files.pythonhosted.org/packages/67/93/9ef70bfb7346c778caf09b7cd10c17c33f601f2d17019fa1aedcda738b5f/sentry_sdk-2.71.0.tar.gz"
    sha256 "7beb27a22f06396f3a05510c3da6ea10e1c79e02e859993c27ce4ff074e296d6"
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
    url "https://files.pythonhosted.org/packages/e4/be/0123026f719d1a7936f214a88b553bb5701e04ff2511147c1dab0c5035eb/sse_starlette-3.5.0.tar.gz"
    sha256 "75de713aa8a9441513cc283220826da079d982770965b951e9437720e8bafdb2"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/7b/2b/3850dc6bf7ef71b088962eba31dafc6cffd2f96e577ebb0bb316df96da3e/starlette-1.7.0.tar.gz"
    sha256 "c79f74ea63cff761804fbbfb182f1e0b440c2d07b164d24700c5a1bab5d6ff5d"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/16/f7/57713ba479fd405eb76de31404b2c744c289e336b2d999511ebf51e496f7/typer-0.27.2.tar.gz"
    sha256 "269b7eb9d3c202ca84b4bc9618cb04ebb43d3d4d1e567e4c768607232c05f945"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/a3/26/b09b8010994eccc3c09092e6b34058f36a460eea2d4c3e8b910c695975a0/typing_inspection-0.4.4.tar.gz"
    sha256 "547274fa6b0a561ccf549cc9524b999a578e737d015d8709d021f9d0d13bea47"
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
    url "https://files.pythonhosted.org/packages/18/72/fba934cb3dff7a85d811820efffcd141ddd52b5a2a01637f64551373ff4d/websockets-17.1.tar.gz"
    sha256 "acfea4c20bf54384883ea33b1240fc1db4f52e190823a4e2b334bc3e8bfca96a"
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
