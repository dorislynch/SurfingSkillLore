
# react-native-surfing-skill-lore

## Getting started

`$ npm install react-native-surfing-skill-lore --save`

### Mostly automatic installation

`$ react-native link react-native-surfing-skill-lore`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-surfing-skill-lore` and add `RNSurfingSkillLore.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNSurfingSkillLore.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNSurfingSkillLorePackage;` to the imports at the top of the file
  - Add `new RNSurfingSkillLorePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-surfing-skill-lore'
  	project(':react-native-surfing-skill-lore').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-surfing-skill-lore/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-surfing-skill-lore')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNSurfingSkillLore.sln` in `node_modules/react-native-surfing-skill-lore/windows/RNSurfingSkillLore.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Surfing.Skill.Lore.RNSurfingSkillLore;` to the usings at the top of the file
  - Add `new RNSurfingSkillLorePackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNSurfingSkillLore from 'react-native-surfing-skill-lore';

// TODO: What to do with the module?
RNSurfingSkillLore;
```
  