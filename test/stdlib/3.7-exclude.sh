SKIP_TESTS=(
    [test_format.py]=1 # FIXME: works in master? 795b2195? test check failures if/and logic

    [test_queue.py]=1  # FIXME: test check failures works on 795b2195 (which is recent)

    [test_httplib.py]=1 # test runs. kills after 15 seconds. works on f7e2064e
    [test_urllib2.py]=1 # Test errors. control flow: works on f7e2064e
    [test_grammar.py]=1 # Test errors. probably control flow.

    [test_pyclbr.py]=1 # test errors if/else nesting in checkModule. Works on uncompyle6

    [test___all__.py]=1 # it fails on its own
    [test_asdl_parser.py]=1 # it fails on its own
    [test_atexit.py]=1  # The atexit test looks for specific comments in error lines
    [test_buffer.py]=1  # Test run errors; takes long time to decompile

    [test_clinic.py]=1 # it fails on its own
    [test_cmath.py]=1 # control-flow error
    [test_cmd_line.py]=1  # Interactive?
    [test_cmd_line_script.py]=1
    [test_compileall.py]=1 # fails on its own
    [test_compile.py]=1  # Code introspects on co_consts in a non-decompilable way
    [test_concurrent_futures.py]=1 # Takes too long *before* decompiling
    [test_coroutines.py]=1 # Parse error
    [test_ctypes.py]=1 # it fails on its own
    [test_curses.py]=1 # probably byte string not handled properly
    [test_datetime.py]=1   # Takes too long *before* decompiling
    [test_dbm_ndbm.py]=1 # it fails on its own
    [test_decimal.py]=1   # parse error
    [test_descr.py]=1   # test assertion failures
    [test_devpoll.py]=1 # it fails on its own
    [test_dis.py]=1   # Introspects on line numbers; line numbers don't match in disassembly - duh!
    [test_doctest.py]=1   # test failures
    [test_docxmlrpc.py]=1

    [test_enum.py]=1   # test run errors; probably bad control flow

    [test_faulthandler.py]=1   # test takes too long before decompiling
    [test_fileinput.py]=1 # too long to run - control flow?
    [test_frame.py]=1 # test assertion errors
    [test_fstring.py]=1 # need to disambiguate leading fstrings from docstrings

    [test_generators.py]=1  # Works if you run via Python. So possibly some test-framework problem
    [test_gdb.py]=1 # it fails on its own
    [test_glob.py]=1  # TypeError: join() argument must be str or bytes, not 'tuple'
    [test_grp.py]=1 # Running test doesn't terminate (killed)

    [test_imaplib.py]=1 # test errors; control-flow?
    [test_io.py]=1 # test takes too long to run: 37 seconds
    [test_inspect.py]=1 # Investigate test check failures

    [test_kqueue.py]=1 # it fails on its own

    [test_lib2to3.py]=1 # it fails on its own
    [test_long.py]=1 # FIX: if boundaries wrong in Rat __init__
    [test_logging.py]=1 # test takes too long to run: 20 seconds

    [test_mailbox.py]=1 # probably control flow
    [test_math.py]=1  # test assert failures
    [test_msilib.py]=1 # it fails on its own
    [test_multiprocessing_fork.py]=1 # test takes too long to run: 62 seconds
    [test_multiprocessing_forkserver.py]=1
    [test_multiprocessing_spawn.py]=1

    [test_nntplib.py]=1 # Too long in running before decomplation takes 25 seconds

    [test_ossaudiodev.py]=1 # it fails on its own

    [test_pdb.py]=1 # Probably relies on comments
    [test_peepholer.py]=1 # test assert error
    [test_pkg.py]=1 # Investigate: lists differ
    [test_pkgutil.py]=1 # Investigate:
    [test_poll.py]=1 # Takes too long to run before decompiling 11 seconds
    [test_pwd.py]=1 # killing - doesn't terminate
    [test_pydoc.py]=1 # it fails on its own
    [test_pyclbr.py]=1 # test errors

    [test_regrtest.py]=1 # lists differ
    [test_runpy.py]=1  # Too long to run before decompiling

    [test_select.py]=1 # test takes too long to run: 11 seconds
    [test_selectors.py]=1 # Takes too long to run before decompling: 17 seconds
    [test_shutil.py]=1 # fails on its own
    [test_signal.py]=1 # Takes too long to run before decompiling: 22 seconds
    [test_smtplib.py]=1 # test failures
    [test_socket.py]=1 # Takes too long to run before decompiling
    [test_ssl.py]=1 # Takes too long to run more than 15 seconds. Probably control flow; unintialized variable
    [test_startfile.py]=1 # it fails on its own
    [test_strptime.py]=1 # test check failure
    [test_strtod.py]=1 # test assertions failed
    [test_subprocess.py]=1 # Takes too long to run before decompile: 25 seconds
    [test_sys_settrace.py]=1 # running the tests loops forever. Control flow?

    [test_tarfile.py]=1 # test assertions failed
    [test_telnetlib.py]=1 # test run takes more than 15 seconds
    [test_threading.py]=1 # test assertion failers
    [test_threaded_import.py]=1 # test assertion failures
    [test_tk.py]=1  # test takes too long to run: 13 seconds
    [test_tokenize.py]=1 # test takes too long to run before decompilation: 43 seconds
    [test_trace.py]=1  # it fails on its own
    [test_traceback.py]=1 # Probably uses comment for testing
    [test_tracemalloc.py]=1 # test assert failures
    [test_ttk_guionly.py]=1  # implementation specfic and test takes too long to run: 19 seconds
    [test_ttk_guionly.py]=1  # implementation specfic and test takes too long to run: 19 seconds
    [test_typing.py]=1 # test errors

    [test_unicode.py]=1 # unicode thing
    [test_urllibnet.py]=1 # probably control flow - uninitialized variable

    [test_weakref.py]=1 # probably control flow - uninitialized variable
    [test_with.py]=1 # test errors

    [test_winconsoleio.py]=1 # it fails on its own
    [test_winreg.py]=1 # it fails on its own
    [test_winsound.py]=1 # it fails on its own

    [test_zipfile.py]=1 # it fails on its own
    [test_zipfile64.py]=1 # Too long to run
)
# 284 unit-test files in about 15 minutes

if (( BATCH )) ; then
    SKIP_TESTS[test_bdb.py]=1 # fails on POWER
    SKIP_TESTS[test_dbm_gnu.py]=1 # fails on its own on POWER
    SKIP_TESTS[test_fileio.py]=1
    SKIP_TESTS[test_idle.py]=1 # Probably installation specific
    SKIP_TESTS[test_sqlite.py]=1 # fails on its own on POWER
    SKIP_TESTS[test_sysconfig.py]=1 # fails on POWER
    SKIP_TESTS[test_tempfile.py]=1 # it fails on POWER (no fd attribuet)
    SKIP_TESTS[test_tix.py]=1 # it fails on its own
    SKIP_TESTS[test_time.py]=1 # it fails on POWER (supposed to work on linux though)
    SKIP_TESTS[test_ttk_textonly.py]=1 # Installation dependent?
    SKIP_TESTS[test_venv.py]=1 # Too long to run: 11 seconds
    SKIP_TESTS[test_zipimport_support.py]=1

fi
