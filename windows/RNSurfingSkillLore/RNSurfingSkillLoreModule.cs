using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Surfing.Skill.Lore.RNSurfingSkillLore
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNSurfingSkillLoreModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNSurfingSkillLoreModule"/>.
        /// </summary>
        internal RNSurfingSkillLoreModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNSurfingSkillLore";
            }
        }
    }
}
