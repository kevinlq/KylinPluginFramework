# KylinPluginFramework
A light weight plugin framework for Qt, free to cooperate with 3rd-party library without any injection.

# Features
- Dynamic loading any QObject class with configuration file, just like building LEGO
- Any QObject classes could be supported with a single line of declaration like `Q_DECL_METATYPE`, you can write it anywhere before loading the object. So you could configure any QObject classes from 3-rd party library without any injection.
- EventBus of publish/subscribe mechanism to decouple sender and receiver:
  - Better performance than signals&slots.
  - Easier to write than signals&slots.
  - Both synchronized and asynchronized are supported, just like `Qt::DirectConnection` and `Qt::QueuedConnection`
- Connect signals and slots by configuration file is also supported, just like eventbus.
- Published event could connect to signals/slots, signals could connect to subscribed event too.
- Object's every property could be configured.
- QObject's object-tree-hierarchy is supported.
- Object can be initialized in sub-thread by configuration, you needn't write any code about it.
- Seperate configeration files are supported -- a `component` file is used to describe a subset of the configuration, and it behaves like a single concrete object, to be configured in other components or main configuration file.

# Docs
Only coments at present, sorry for this.

# Examples
There's a simply example in `test` folder, which shows the features with configuration file and several classes.

# Roadmap
1. Submit code before 2019.7.7
2. Finish documentation with Doxygen(See [Another repository](https://zgblkylin.github.io/Cpp-Utilities/) for example).
3. Migrate configuration file format from `json` to `xml`.
4. Other further maintenance.