//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

<<<<<<< HEAD
<<<<<<< HEAD
#include <rive_common/rive_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  RivePluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("RivePlugin"));
=======
=======
>>>>>>> 5388674f9a65e4ef704368a88984081b07a02dde
#include <firebase_auth/firebase_auth_plugin_c_api.h>
#include <firebase_core/firebase_core_plugin_c_api.h>
#include <rive_common/rive_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  FirebaseAuthPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FirebaseAuthPluginCApi"));
  FirebaseCorePluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FirebaseCorePluginCApi"));
<<<<<<< HEAD
>>>>>>> b9b6b249fa4a224dc5a525abd3fa250bc5872a96
=======
  RivePluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("RivePlugin"));
>>>>>>> 5388674f9a65e4ef704368a88984081b07a02dde
}
