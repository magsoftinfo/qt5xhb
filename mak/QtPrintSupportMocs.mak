$(QT5XHB_OBJ_DIR)/QPrintDialogSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtPrintSupport/QPrintDialogSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPrintPreviewDialogSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtPrintSupport/QPrintPreviewDialogSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPrintPreviewWidgetSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtPrintSupport/QPrintPreviewWidgetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
