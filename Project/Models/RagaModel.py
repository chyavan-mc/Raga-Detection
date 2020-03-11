class Raga:
    
    def __init__(self, isSampoorna=None, isJanaka=None, isMelakartha=None):
        self._isJanaka = isJanaka
        self._isSampoorna = isSampoorna
        self._melakarthaNumber = melakarthaNumber
    
    def set_isSampoorna(self, isSampoorna):
        self._isSampoorna = isSampoorna
        
    def get_isSampoorna(self):
        return self._isSampoorna
    
    def set_isJanaka(self, isJanaka, melakarthaNumber=None):
        self._isJanaka = isJanaka
        self._melakarthaNumber = melakarthaNumber
            
    def get_isJanaka(self):
        return self._isJanaka
    
    def get_melakarthaNumber(self):
        return self._melakarthaNumber
    
    def set_melakarthaNumber(self, melakarthaNumber):
        self._melakarthaNumber = melakarthaNumber