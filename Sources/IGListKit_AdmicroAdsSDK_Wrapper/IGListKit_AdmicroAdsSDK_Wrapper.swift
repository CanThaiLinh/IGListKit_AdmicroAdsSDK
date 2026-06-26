// IGListKit_AdmicroAdsSDK_Wrapper
//
// This wrapper target pulls in all required dependencies for SPM consumers:
//
//   ┌─────────────────────────────────────────────────────┐
//   │ IGListKit_AdmicroAdsSDK_Binary (STATIC xcframework) │
//   │   → symbols linked at compile time, no @rpath       │
//   ├─────────────────────────────────────────────────────┤
//   │ IGListKit + IGListDiffKit (from Instagram/IGListKit) │
//   │   → statically linked by SPM                        │
//   ├─────────────────────────────────────────────────────┤
//   │ AdmicroAdsSDK (from CanThaiLinh/AdmicroAdsSDK)      │
//   │   → dynamic xcframework, embedded by SPM            │
//   └─────────────────────────────────────────────────────┘
//
// Consumer chỉ cần add package IGListKit_AdmicroAdsSDK vào project.
// Không cần add IGListKit hay AdmicroAdsSDK riêng lẻ.
