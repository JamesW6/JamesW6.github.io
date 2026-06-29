[4mNPM-RUN[24m(1)                                                                                                                                                                                           [4mNPM-RUN[24m(1)

[1mNAME[0m
       [1mnpm-run [22m- Run arbitrary package scripts

   [1mSynopsis[0m
         npm run <command> [-- <args>]

         aliases: run-script, rum, urn

   [1mDescription[0m
       This runs an arbitrary command from a package's [1m"scripts" [22mobject. If no [1m"command" [22mis provided, it will list the available scripts.

       [1mrun[-script]  [22mis  used  by  the  test,  start, restart, and stop commands, but can be called directly, as well. When the scripts in the package are printed out, they're separated into lifecycle (test,
       start, restart) and directly-run scripts.

       Any positional arguments are passed to the specified script. Use [1m-- [22mto pass [1m-[22m-prefixed flags and options which would otherwise be parsed by npm.

       For example:

         npm run test -- --grep="pattern"

       The arguments will only be passed to the script specified after [1mnpm run [22mand not to any [1mpre [22mor [1mpost [22mscript.

       The [1menv [22mscript is a special built-in command that can be used to list environment variables that will be available to the script at runtime. If an "env" command is defined in  your  package,  it  will
       take precedence over the built-in.

       In  addition to the shell's pre-existing [1mPATH[22m, [1mnpm run [22madds [1mnode_modules/.bin [22mto the [1mPATH [22mprovided to scripts. Any binaries provided by locally-installed dependencies can be used without the [1mnode_mod‐[0m
       [1mules/.bin [22mprefix. For example, if there is a [1mdevDependency [22mon [1mtap [22min your package, you should write:

         "scripts": {"test": "tap test/*.js"}

       instead of

         "scripts": {"test": "node_modules/.bin/tap test/*.js"}

       The actual shell your script is run within is platform dependent. By default, on Unix-like systems it is the [1m/bin/sh [22mcommand, on Windows it is [1mcmd.exe[22m. The actual shell referred to by [1m/bin/sh [22malso de‐
       pends on the system. You can customize the shell with the [1m\fBscript-shell\fR config [4m[22m⟨/using-npm/config#script-shell⟩[24m.

       Scripts are run from the root of the package folder, regardless of what the current working directory is when [1mnpm run [22mis called. If you want your script to use different behavior based on what  subdi‐
       rectory you're in, you can use the [1mINIT_CWD [22menvironment variable, which holds the full path you were in when you ran [1mnpm run[22m.

       [1mnpm run [22msets the [1mNODE [22menvironment variable to the [1mnode [22mexecutable with which [1mnpm [22mis executed.

       If you try to run a script without having a [1mnode_modules [22mdirectory and it fails, you will be given a warning to run [1mnpm install[22m, just in case you've forgotten.

   [1mWorkspaces support[0m
       You  may  use the [1m\fBworkspace\fR [4m[22m⟨/using-npm/config#workspace⟩[24m or [1m\fBworkspaces\fR [4m[22m⟨/using-npm/config#workspaces⟩[24m configs in order to run an arbitrary command from a package's [1m"scripts" [22mobject in the
       context of the specified workspaces. If no [1m"command" [22mis provided, it will list the available scripts for each of these configured workspaces.

       Given a project with configured workspaces, e.g:

         +-- package.json
         `-- packages
            +-- a
            |   `-- package.json
            +-- b
            |   `-- package.json
            `-- c
                `-- package.json

       Assuming the workspace configuration is properly set up at the root level [1mpackage.json [22mfile. e.g:

         {
             "workspaces": [ "./packages/*" ]
         }

       And that each of the configured workspaces has a configured [1mtest [22mscript, we can run tests in all of them using the [1m\fBworkspaces\fR config [4m[22m⟨/using-npm/config#workspaces⟩[24m:

         npm test --workspaces

   [1mFiltering workspaces[0m
       It's also possible to run a script in a single workspace using the [1mworkspace [22mconfig along with a name or directory path:

         npm test --workspace=a

       The [1mworkspace [22mconfig can also be specified multiple times in order to run a specific script in the context of multiple workspaces. When defining values for the [1mworkspace [22mconfig in the command line, it
       also possible to use [1m-w [22mas a shorthand, e.g:

         npm test -w a -w b

       This last command will run [1mtest [22min both [1m./packages/a [22mand [1m./packages/b [22mpackages.

   [1mConfiguration[0m
   [1mworkspace[0m
       •   Default:

       •   Type: String (can be set multiple times)

       Enable running a command in the context of the configured workspaces of the current project while filtering by running only the workspaces defined by this configuration option.

       Valid values for the [1mworkspace [22mconfig are either:

       •   Workspace names

       •   Path to a workspace directory

       •   Path to a parent workspace directory (will result in selecting all workspaces within that folder)

       When set for the [1mnpm init [22mcommand, this may be set to the folder of a workspace which does not yet exist, to create the folder and set it up as a brand new workspace within the project.

       This value is not exported to the environment for child processes.

   [1mworkspaces[0m
       •   Default: null

       •   Type: null or Boolean

       Set to true to run the command in the context of [1mall [22mconfigured workspaces.

       Explicitly setting this to false will cause commands like [1minstall [22mto ignore workspaces altogether. When not set explicitly:

       •   Commands that operate on the [1mnode_modules [22mtree (install, update, etc.) will link workspaces into the [1mnode_modules [22mfolder. - Commands that do other things (test, exec, publish, etc.)  will  operate
           on the root project, [4munless[24m one or more workspaces are specified in the [1mworkspace [22mconfig.

       This value is not exported to the environment for child processes.

   [1minclude-workspace-root[0m
       •   Default: false

       •   Type: Boolean

       Include the workspace root when workspaces are enabled for a command.

       When  false,  specifying  individual  workspaces  via  the  [1mworkspace [22mconfig, or all workspaces via the [1mworkspaces [22mflag, will cause npm to operate only on the specified workspaces, and not on the root
       project.

       This value is not exported to the environment for child processes.

   [1mif-present[0m
       •   Default: false

       •   Type: Boolean

       If true, npm will not exit with an error code when [1mrun [22mis invoked for a script that isn't defined in the [1mscripts [22msection of [1mpackage.json[22m. This option can be used when it's desirable to optionally  run
       a script when it's present and fail if the script fails. This is useful, for example, when running scripts that may only apply for some builds in an otherwise generic CI setup.

       This value is not exported to the environment for child processes.

   [1mignore-scripts[0m
       •   Default: false

       •   Type: Boolean

       If true, npm does not run scripts specified in package.json files.

       Note  that  commands  explicitly intended to run a particular script, such as [1mnpm start[22m, [1mnpm stop[22m, [1mnpm restart[22m, [1mnpm test[22m, and [1mnpm run [22mwill still run their intended script if [1mignore-scripts [22mis set, but
       they will [4mnot[24m run any pre- or post-scripts.

   [1mforeground-scripts[0m
       •   Default: [1mfalse [22munless when using [1mnpm pack [22mor [1mnpm publish [22mwhere it defaults to [1mtrue[0m

       •   Type: Boolean

       Run all build scripts (ie, [1mpreinstall[22m, [1minstall[22m, and [1mpostinstall[22m) scripts for installed packages in the foreground process, sharing standard input, output, and error with the main npm process.

       Note that this will generally make installs run slower, and be much noisier, but can be useful for debugging.

   [1mscript-shell[0m
       •   Default: '/bin/sh' on POSIX systems, 'cmd.exe' on Windows

       •   Type: null or String

       The shell to use for scripts run with the [1mnpm exec[22m, [1mnpm run [22mand [1mnpm init <package-spec> [22mcommands.

   [1mSee Also[0m
       •   npm help scripts

       •   npm help test

       •   npm help start

       •   npm help restart

       •   npm help stop

       •   npm help config

       •   npm help workspaces

NPM@11.11.0                                                                                      February 2026                                                                                       [4mNPM-RUN[24m(1)
