import 'package:flutter/material.dart';
import 'package:kazumi/request/api.dart';
import 'package:kazumi/utils/utils.dart';

class StyleString {
  static const double cardSpace = 8;
  static const double safeSpace = 12;
  static BorderRadius mdRadius = BorderRadius.circular(10);
  static const Radius imgRadius = Radius.circular(10);
  static const double aspectRatio = 16 / 10;
}

// 随机UA列表
const List<String> userAgentsList = [
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',
  'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1',
  'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.1',
  'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Safari/605.1.15',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0',
];

// Bangumi API 文档要求的UA格式
Map<String, String> bangumiHTTPHeader = {
  'user-agent':
      'Predidit/Kazumi/${Api.version} (Android) (https://github.com/Predidit/Kazumi)',
  'referer': '',
};

// 可选硬件解码器
const Map<String, String> hardwareDecodersList = {
  'auto': '启用任意可用解码器',
  'auto-safe': '启用最佳解码器',
  'auto-copy': '启用带拷贝功能的最佳解码器',
  'd3d11va': 'DirectX11 (windows8 及以上)',
  'd3d11va-copy': 'DirectX11 (windows8 及以上) (非直通)',
  'videotoolbox': 'VideoToolbox (macOS / iOS)',
  'videotoolbox-copy': 'VideoToolbox (macOS / iOS) (非直通)',
  'vaapi': 'VAAPI (Linux)',
  'vaapi-copy': 'VAAPI (Linux) (非直通)',
  'nvdec': 'NVDEC (NVIDIA独占)',
  'nvdec-copy': 'NVDEC (NVIDIA独占) (非直通)',
  'drm': 'DRM (Linux)',
  'drm-copy': 'DRM (Linux) (非直通)',
  'vulkan': 'Vulkan (全平台) (实验性)',
  'vulkan-copy': 'Vulkan (全平台) (实验性) (非直通)',
  'dxva2': 'DXVA2 (Windows7 及以上)',
  'dxva2-copy': 'DXVA2 (Windows7 及以上) (非直通)',
  'vdpau': 'VDPAU (Linux)',
  'vdpau-copy': 'VDPAU (Linux) (非直通)',
  'mediacodec': 'MediaCodec (Android)',
  'cuda': 'CUDA (NVIDIA独占) (过时)',
  'cuda-copy': 'CUDA (NVIDIA独占) (过时) (非直通)',
  'crystalhd': 'CrystalHD (全平台) (过时)',
  'rkmpp': 'Rockchip MPP (仅部分Rockchip芯片)',
};

// 超分辨率滤镜
const List<String> mpvAnime4KShaders = [
  'Anime4K_Clamp_Highlights.glsl',
  'Anime4K_Restore_CNN_VL.glsl',
  'Anime4K_Upscale_CNN_x2_VL.glsl',
  'Anime4K_AutoDownscalePre_x2.glsl',
  'Anime4K_AutoDownscalePre_x4.glsl',
  'Anime4K_Upscale_CNN_x2_M.glsl'
];

// 超分辨率滤镜 (轻量)
const List<String> mpvAnime4KShadersLite = [
  'Anime4K_Clamp_Highlights.glsl',
  'Anime4K_Restore_CNN_M.glsl',
  'Anime4K_Restore_CNN_S.glsl',
  'Anime4K_Upscale_CNN_x2_M.glsl',
  'Anime4K_AutoDownscalePre_x2.glsl',
  'Anime4K_AutoDownscalePre_x4.glsl',
  'Anime4K_Upscale_CNN_x2_S.glsl'
];

// 可选播放倍速
const List<double> defaultPlaySpeedList = [
  0.25,
  0.5,
  0.75,
  1.0,
  1.25,
  1.5,
  1.75,
  2.0,
  2.25,
  2.5,
  2.75,
  3.0,
];

// 可选弹幕透明度
const List<double> danOpacityList = [
  0.1,
  0.2,
  0.3,
  0.4,
  0.5,
  0.6,
  0.7,
  0.8,
  0.9,
  1.0,
];

// 可选弹幕字体大小
final List<double> danFontList = [
  10.0,
  11.0,
  12.0,
  13.0,
  14.0,
  15.0,
  16.0,
  17.0,
  18.0,
  19.0,
  20.0,
  21.0,
  22.0,
  23.0,
  24.0,
  25.0,
  26.0,
  27.0,
  28.0,
  29.0,
  30.0,
  31.0,
  32.0,
  if (!Utils.isCompact()) ...[
    33.0,
    34.0,
    35.0,
    36.0,
    37.0,
    38.0,
    39.0,
    40.0,
    41.0,
    42.0,
    43.0,
    44.0,
    45.0,
    46.0,
    47.0,
    48.0,
  ]
];

// 可选弹幕字体字重
final List<int> danFontWeightList = [
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
];

// 可选弹幕区域
const List<double> danAreaList = [
  0.25,
  0.5,
  0.75,
  1.0,
];
