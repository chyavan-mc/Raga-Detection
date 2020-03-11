import logging
logging.basicConfig(filename="RagaLogs.txt", format='%(levelname)s - %(asctime)s - %(filename)s #%(lineno)d -> %(message)s', datefmt='%d-%b-%y %H:%M:%S')

class Logger:
    def Debug(message):
        logging.debug(message)
    
    def Error(message):
        logging.error(message)
        
    def Info(message):
        logging.info(message)
    
    def Warn(message):
        logging.warning(message)
        
    def Critical(message):
        logging.critical(message)