//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <pdfx/native_pdf_renderer_plugin.h>
#include <syncfusion_pdfviewer_windows/syncfusion_pdfviewer_windows_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  NativePdfRendererPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("NativePdfRendererPlugin"));
  SyncfusionPdfviewerWindowsPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("SyncfusionPdfviewerWindowsPlugin"));
}
