from anki_testing import anki_running

def test_my_addon():
    with anki_running() as anki_app:
        print(f'got anki instance {anki_app}')
        assert True
