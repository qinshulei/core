#-------------------------------------------------
#
# Project created by QtCreator 2014-03-15T18:33:57
#
#-------------------------------------------------

QT       -= core gui

TARGET = graphics
TEMPLATE = lib
CONFIG += staticlib

CONFIG += c++11

############### destination path ###############
DESTINATION_SDK_PATH = $$PWD/../../../../build/lib

# WINDOWS
win32:contains(QMAKE_TARGET.arch, x86_64):{
CONFIG(debug, debug|release) {
    DESTDIR = $$DESTINATION_SDK_PATH/win_64/DEBUG
} else {
    DESTDIR = $$DESTINATION_SDK_PATH/win_64
}
}
win32:!contains(QMAKE_TARGET.arch, x86_64):{
CONFIG(debug, debug|release) {
    DESTDIR = $$DESTINATION_SDK_PATH/win_32/DEBUG
} else {
    DESTDIR = $$DESTINATION_SDK_PATH/win_32
}
}

linux-g++ | linux-g++-64 | linux-g++-32:contains(QMAKE_HOST.arch, x86_64):{
    DESTDIR = $$DESTINATION_SDK_PATH/linux_64
}
linux-g++ | linux-g++-64 | linux-g++-32:!contains(QMAKE_HOST.arch, x86_64):{
    DESTDIR = $$DESTINATION_SDK_PATH/linux_32
}

mac {
    DESTDIR = $$DESTINATION_SDK_PATH/mac_64
}

################################################

DEFINES += \
    _QT \
    FT2_BUILD_LIBRARY \
    EXCLUDE_JPG_SUPPORT \
    MNG_SUPPORT_DISPLAY \
    MNG_SUPPORT_READ \
    MNG_SUPPORT_WRITE \
    MNG_ACCESS_CHUNKS \
    MNG_STORE_CHUNKS\
    MNG_ERROR_TELLTALE \
    _USE_MATH_DEFINES

linux-g++ | linux-g++-64 | linux-g++-32 {
    DEFINES += \
    HAVE_UNISTD_H \
    LINUX \
    _LINUX \
    _LINUX_QT

    CONFIG += c++11
    QMAKE_CXXFLAGS += -Wno-narrowing

    message(linux)
}

mac {
    DEFINES += \
    HAVE_UNISTD_H \
    _LINUX \
    _LINUX_QT \
    _MAC \
    MAC \
    QT_MAC

    message(mac)
}

win32 {
    DEFINES += \
    JAS_WIN_MSVC_BUILD \
    WIN32

    DEFINES -= UNICODE

    QMAKE_CXXFLAGS_RELEASE -= -Zc:strictStrings

    message(windows)
}

INCLUDEPATH += \
    ../../../agg-2.4/include \
    ../../../freetype-2.5.2/include \
    ../../../cximage/jasper/include \
    ../../../cximage/jpeg \
    ../../../cximage/png \
    ../../../cximage/zlib

SOURCES += \
    ../../../graphics/ArrowHead.cpp \
    ../../../graphics/Brush.cpp \
    ../../../graphics/Clip.cpp \
    ../../../graphics/Graphics.cpp \
    ../../../graphics/GraphicsPath.cpp \
    ../../../graphics/GraphicsRenderer.cpp \
    ../../../graphics/Image.cpp \
    ../../../graphics/Matrix.cpp \
    ../../../graphics/TemporaryCS.cpp \
    \
    ../../../agg-2.4/src/agg_arc.cpp \
    ../../../agg-2.4/src/agg_bezier_arc.cpp \
    ../../../agg-2.4/src/agg_arrowhead.cpp \
    ../../../agg-2.4/src/ctrl/agg_cbox_ctrl.cpp \
    ../../../agg-2.4/src/agg_curves.cpp \
    ../../../agg-2.4/src/agg_gsv_text.cpp \
    ../../../agg-2.4/src/agg_image_filters.cpp \
    ../../../agg-2.4/src/agg_line_aa_basics.cpp \
    ../../../agg-2.4/src/agg_line_profile_aa.cpp \
    ../../../agg-2.4/src/agg_rounded_rect.cpp \
    ../../../agg-2.4/src/agg_sqrt_tables.cpp \
    ../../../agg-2.4/src/agg_trans_affine.cpp \
    ../../../agg-2.4/src/agg_vcgen_bspline.cpp \
    ../../../agg-2.4/src/agg_vcgen_contour.cpp \
    ../../../agg-2.4/src/agg_vcgen_dash.cpp \
    ../../../agg-2.4/src/agg_vcgen_markers_term.cpp \
    ../../../agg-2.4/src/agg_vcgen_smooth_poly1.cpp \
    ../../../agg-2.4/src/agg_vcgen_stroke.cpp \
    \
    ../../../freetype-2.5.2/src/base/ftbbox.c \
    ../../../freetype-2.5.2/src/base/ftgxval.c \
    ../../../freetype-2.5.2/src/base/ftlcdfil.c \
    ../../../freetype-2.5.2/src/base/ftmm.c \
    ../../../freetype-2.5.2/src/base/ftotval.c \
    ../../../freetype-2.5.2/src/base/ftpatent.c \
    ../../../freetype-2.5.2/src/base/ftpfr.c \
    ../../../freetype-2.5.2/src/base/ftsynth.c \
    ../../../freetype-2.5.2/src/base/fttype1.c \
    ../../../freetype-2.5.2/src/base/ftwinfnt.c \
    ../../../freetype-2.5.2/src/base/ftxf86.c \
    ../../../freetype-2.5.2/src/pcf/pcf.c \
    ../../../freetype-2.5.2/src/pfr/pfr.c \
    ../../../freetype-2.5.2/src/psaux/psaux.c \
    ../../../freetype-2.5.2/src/pshinter/pshinter.c \
    ../../../freetype-2.5.2/src/psnames/psmodule.c \
    ../../../freetype-2.5.2/src/raster/raster.c \
    ../../../freetype-2.5.2/src/sfnt/sfnt.c \
    ../../../freetype-2.5.2/src/truetype/truetype.c \
    ../../../freetype-2.5.2/src/type1/type1.c \
    ../../../freetype-2.5.2/src/cid/type1cid.c \
    ../../../freetype-2.5.2/src/type42/type42.c \
    ../../../freetype-2.5.2/src/winfonts/winfnt.c \
    \
    ../../../freetype-2.5.2/src/autofit/autofit.c \
    ../../../freetype-2.5.2/src/bdf/bdf.c \
    ../../../freetype-2.5.2/src/cff/cff.c \
    ../../../freetype-2.5.2/src/base/ftbase.c \
    ../../../freetype-2.5.2/src/base/ftbitmap.c \
    ../../../freetype-2.5.2/src/cache/ftcache.c \
    ../../../freetype-2.5.2/src/base/ftfstype.c \
    ../../../freetype-2.5.2/src/base/ftgasp.c \
    ../../../freetype-2.5.2/src/base/ftglyph.c \
    ../../../freetype-2.5.2/src/gzip/ftgzip.c \
    ../../../freetype-2.5.2/src/base/ftinit.c \
    ../../../freetype-2.5.2/src/lzw/ftlzw.c \
    ../../../freetype-2.5.2/src/base/ftstroke.c \
    ../../../freetype-2.5.2/src/base/ftsystem.c \
    ../../../freetype-2.5.2/src/smooth/smooth.c \
    \
    ../../../fontengine/ApplicationFonts.cpp \
    ../../../fontengine/FontFile.cpp \
    ../../../fontengine/FontManager.cpp \
    ../../../fontengine/FontPath.cpp \
    ../../../fontengine/GlyphString.cpp \
    \
    ../../../fontengine/fontconverter/FontConverter.cpp \
    ../../../fontengine/fontconverter/FontFileEncodings.cpp \
    ../../../fontengine/fontconverter/FontFileTrueType.cpp \
    ../../../fontengine/fontconverter/FontFileType1.cpp \
    ../../../fontengine/fontconverter/FontFileType1C.cpp \
    ../../../fontengine/fontconverter/Hash.cpp \
    ../../../fontengine/fontconverter/StringExt.cpp \
    \
    ../../../cximage/jasper/base/jas_cm.c \
    ../../../cximage/jasper/base/jas_debug.c \
    ../../../cximage/jasper/base/jas_getopt.c \
    ../../../cximage/jasper/base/jas_icc.c \
    ../../../cximage/jasper/base/jas_iccdata.c \
    ../../../cximage/jasper/base/jas_image.c \
    ../../../cximage/jasper/base/jas_init.c \
    ../../../cximage/jasper/base/jas_malloc.c \
    ../../../cximage/jasper/base/jas_stream.c \
    ../../../cximage/jasper/base/jas_seq.c \
    ../../../cximage/jasper/base/jas_string.c \
    ../../../cximage/jasper/base/jas_tvp.c \
    ../../../cximage/jasper/base/jas_version.c \
    ../../../cximage/jasper/bmp/bmp_cod.c \
    ../../../cximage/jasper/bmp/bmp_dec.c \
    ../../../cximage/jasper/bmp/bmp_enc.c \
    ../../../cximage/jasper/jp2/jp2_cod.c \
    ../../../cximage/jasper/jp2/jp2_dec.c \
    ../../../cximage/jasper/jp2/jp2_enc.c \
    ../../../cximage/jasper/jpc/jpc_bs.c \
    ../../../cximage/jasper/jpc/jpc_cs.c \
    ../../../cximage/jasper/jpc/jpc_dec.c \
    ../../../cximage/jasper/jpc/jpc_enc.c \
    ../../../cximage/jasper/jpc/jpc_math.c \
    ../../../cximage/jasper/jpc/jpc_mct.c \
    ../../../cximage/jasper/jpc/jpc_mqcod.c \
    ../../../cximage/jasper/jpc/jpc_mqdec.c \
    ../../../cximage/jasper/jpc/jpc_mqenc.c \
    ../../../cximage/jasper/jpc/jpc_qmfb.c \
    ../../../cximage/jasper/jpc/jpc_t1cod.c \
    ../../../cximage/jasper/jpc/jpc_t1dec.c \
    ../../../cximage/jasper/jpc/jpc_t1enc.c \
    ../../../cximage/jasper/jpc/jpc_t2cod.c \
    ../../../cximage/jasper/jpc/jpc_t2dec.c \
    ../../../cximage/jasper/jpc/jpc_t2enc.c \
    ../../../cximage/jasper/jpc/jpc_tagtree.c \
    ../../../cximage/jasper/jpc/jpc_tsfb.c \
    ../../../cximage/jasper/jpc/jpc_util.c \
    ../../../cximage/jasper/jpg/jpg_dummy.c \
    ../../../cximage/jasper/jpg/jpg_val.c \
    ../../../cximage/jasper/mif/mif_cod.c \
    ../../../cximage/jasper/pgx/pgx_cod.c \
    ../../../cximage/jasper/pgx/pgx_dec.c \
    ../../../cximage/jasper/pgx/pgx_enc.c \
    ../../../cximage/jasper/pnm/pnm_cod.c \
    ../../../cximage/jasper/pnm/pnm_dec.c \
    ../../../cximage/jasper/pnm/pnm_enc.c \
    ../../../cximage/jasper/ras/ras_cod.c \
    ../../../cximage/jasper/ras/ras_dec.c \
    ../../../cximage/jasper/ras/ras_enc.c \
    \
    ../../../cximage/jbig/jbig.c \
    ../../../cximage/jbig/jbig_tab.c \
    \
    ../../../cximage/jpeg/wrtarga.c \
    ../../../cximage/jpeg/wrrle.c \
    ../../../cximage/jpeg/wrppm.c \
    ../../../cximage/jpeg/wrjpgcom.c \
    ../../../cximage/jpeg/wrgif.c \
    ../../../cximage/jpeg/wrbmp.c \
    ../../../cximage/jpeg/transupp.c \
    ../../../cximage/jpeg/rdtarga.c \
    ../../../cximage/jpeg/rdswitch.c \
    ../../../cximage/jpeg/rdrle.c \
    ../../../cximage/jpeg/rdppm.c \
    ../../../cximage/jpeg/rdjpgcom.c \
    ../../../cximage/jpeg/rdgif.c \
    ../../../cximage/jpeg/rdcolmap.c \
    ../../../cximage/jpeg/rdbmp.c \
    ../../../cximage/jpeg/jutils.c \
    ../../../cximage/jpeg/jpegtran.c \
    ../../../cximage/jpeg/jquant1.c \
    ../../../cximage/jpeg/jquant2.c \
    ../../../cximage/jpeg/jdpostct.c \
    ../../../cximage/jpeg/jdsample.c \
    ../../../cximage/jpeg/jdtrans.c \
    ../../../cximage/jpeg/jerror.c \
    ../../../cximage/jpeg/jfdctflt.c \
    ../../../cximage/jpeg/jfdctfst.c \
    ../../../cximage/jpeg/jfdctint.c \
    ../../../cximage/jpeg/jidctflt.c \
    ../../../cximage/jpeg/jidctfst.c \
    ../../../cximage/jpeg/jidctint.c \
    ../../../cximage/jpeg/jmemansi.c \
    ../../../cximage/jpeg/jmemmgr.c \
    ../../../cximage/jpeg/jmemname.c \
    ../../../cximage/jpeg/jmemnobs.c \
    ../../../cximage/jpeg/jaricom.c \
    ../../../cximage/jpeg/jcapimin.c \
    ../../../cximage/jpeg/jcapistd.c \
    ../../../cximage/jpeg/jcarith.c \
    ../../../cximage/jpeg/jccoefct.c \
    ../../../cximage/jpeg/jccolor.c \
    ../../../cximage/jpeg/jcdctmgr.c \
    ../../../cximage/jpeg/jchuff.c \
    ../../../cximage/jpeg/jcinit.c \
    ../../../cximage/jpeg/jcmainct.c \
    ../../../cximage/jpeg/jcmarker.c \
    ../../../cximage/jpeg/jcmaster.c \
    ../../../cximage/jpeg/jcomapi.c \
    ../../../cximage/jpeg/jcparam.c \
    ../../../cximage/jpeg/jcprepct.c \
    ../../../cximage/jpeg/jcsample.c \
    ../../../cximage/jpeg/jctrans.c \
    ../../../cximage/jpeg/jdapimin.c \
    ../../../cximage/jpeg/jdapistd.c \
    ../../../cximage/jpeg/jdarith.c \
    ../../../cximage/jpeg/jdatadst.c \
    ../../../cximage/jpeg/jdatasrc.c \
    ../../../cximage/jpeg/jdcoefct.c \
    ../../../cximage/jpeg/jdcolor.c \
    ../../../cximage/jpeg/jddctmgr.c \
    ../../../cximage/jpeg/jdhuff.c \
    ../../../cximage/jpeg/jdinput.c \
    ../../../cximage/jpeg/jdmainct.c \
    ../../../cximage/jpeg/jdmarker.c \
    ../../../cximage/jpeg/jdmaster.c \
    ../../../cximage/jpeg/jdmerge.c \
    ../../../cximage/jpeg/cdjpeg.c \
    ../../../cximage/jpeg/cjpeg.c \
    ../../../cximage/jpeg/ckconfig.c \
    ../../../cximage/jpeg/djpeg.c \    
    \
    ../../../cximage/libpsd/adjustment.c \
    ../../../cximage/libpsd/bevel_emboss.c \
    ../../../cximage/libpsd/bitmap.c \
    ../../../cximage/libpsd/blend.c \
    ../../../cximage/libpsd/boundary.c \
    ../../../cximage/libpsd/brightness_contrast.c \
    ../../../cximage/libpsd/channel_image.c \
    ../../../cximage/libpsd/channel_mixer.c \
    ../../../cximage/libpsd/color_balance.c \
    ../../../cximage/libpsd/color_mode.c \
    ../../../cximage/libpsd/color_overlay.c \
    ../../../cximage/libpsd/color.c \
    ../../../cximage/libpsd/curves.c \
    ../../../cximage/libpsd/descriptor.c \
    ../../../cximage/libpsd/drop_shadow.c \
    ../../../cximage/libpsd/effects.c \
    ../../../cximage/libpsd/file_header.c \
    ../../../cximage/libpsd/fixed.c \
    ../../../cximage/libpsd/gaussian_blur.c \
    ../../../cximage/libpsd/gradient_blend.c \
    ../../../cximage/libpsd/gradient_fill.c \
    ../../../cximage/libpsd/gradient_map.c \
    ../../../cximage/libpsd/gradient_overlay.c \
    ../../../cximage/libpsd/hue_saturation.c \
    ../../../cximage/libpsd/image_data.c \
    ../../../cximage/libpsd/image_resource.c \
    ../../../cximage/libpsd/inner_glow.c \
    ../../../cximage/libpsd/inner_shadow.c \
    ../../../cximage/libpsd/invert.c \
    ../../../cximage/libpsd/layer_mask.c \
    ../../../cximage/libpsd/levels.c \
    ../../../cximage/libpsd/outer_glow.c \
    ../../../cximage/libpsd/path.c \
    ../../../cximage/libpsd/pattern_fill.c \
    ../../../cximage/libpsd/pattern_overlay.c \
    ../../../cximage/libpsd/pattern.c \
    ../../../cximage/libpsd/photo_filter.c \
    ../../../cximage/libpsd/posterize.c \
    ../../../cximage/libpsd/psd_system.c \
    ../../../cximage/libpsd/psd_zip.c \
    ../../../cximage/libpsd/psd.c \
    ../../../cximage/libpsd/rect.c \
    ../../../cximage/libpsd/satin.c \
    ../../../cximage/libpsd/selective_color.c \
    ../../../cximage/libpsd/solid_color.c \
    ../../../cximage/libpsd/stream.c \
    ../../../cximage/libpsd/stroke.c \
    ../../../cximage/libpsd/threshold.c \
    ../../../cximage/libpsd/thumbnail.c \
    ../../../cximage/libpsd/type_tool.c \
    \
    ../../../cximage/mng/libmng_callback_xs.c \
    ../../../cximage/mng/libmng_chunk_descr.c \
    ../../../cximage/mng/libmng_chunk_io.c \
    ../../../cximage/mng/libmng_chunk_prc.c \
    ../../../cximage/mng/libmng_chunk_xs.c \
    ../../../cximage/mng/libmng_cms.c \
    ../../../cximage/mng/libmng_display.c \
    ../../../cximage/mng/libmng_dither.c \
    ../../../cximage/mng/libmng_error.c \
    ../../../cximage/mng/libmng_filter.c \
    ../../../cximage/mng/libmng_hlapi.c \
    ../../../cximage/mng/libmng_jpeg.c \
    ../../../cximage/mng/libmng_object_prc.c \
    ../../../cximage/mng/libmng_pixels.c \
    ../../../cximage/mng/libmng_prop_xs.c \
    ../../../cximage/mng/libmng_read.c \
    ../../../cximage/mng/libmng_trace.c \
    ../../../cximage/mng/libmng_write.c \
    ../../../cximage/mng/libmng_zlib.c \
    \
    ../../../cximage/png/png.c \
    ../../../cximage/png/pngerror.c \
    ../../../cximage/png/pngget.c \
    ../../../cximage/png/pngmem.c \
    ../../../cximage/png/pngpread.c \
    ../../../cximage/png/pngread.c \
    ../../../cximage/png/pngrio.c \
    ../../../cximage/png/pngrtran.c \
    ../../../cximage/png/pngrutil.c \
    ../../../cximage/png/pngset.c \
    ../../../cximage/png/pngtrans.c \
    ../../../cximage/png/pngwio.c \
    ../../../cximage/png/pngwrite.c \
    ../../../cximage/png/pngwtran.c \
    ../../../cximage/png/pngwutil.c \
    \
    ../../../cximage/raw/libdcr.c \
    \
    ../../../cximage/tiff/tif_stream.cxx \
    ../../../cximage/tiff/tif_aux.c \
    ../../../cximage/tiff/tif_close.c \
    ../../../cximage/tiff/tif_codec.c \
    ../../../cximage/tiff/tif_color.c \
    ../../../cximage/tiff/tif_compress.c \
    ../../../cximage/tiff/tif_dir.c \
    ../../../cximage/tiff/tif_dirinfo.c \
    ../../../cximage/tiff/tif_dirread.c \
    ../../../cximage/tiff/tif_dirwrite.c \
    ../../../cximage/tiff/tif_dumpmode.c \
    ../../../cximage/tiff/tif_error.c \
    ../../../cximage/tiff/tif_extension.c \
    ../../../cximage/tiff/tif_fax3.c \
    ../../../cximage/tiff/tif_fax3sm.c \
    ../../../cximage/tiff/tif_flush.c \
    ../../../cximage/tiff/tif_getimage.c \
    ../../../cximage/tiff/tif_jbig.c \
    ../../../cximage/tiff/tif_jpeg.c \
    ../../../cximage/tiff/tif_luv.c \
    ../../../cximage/tiff/tif_lzw.c \
    ../../../cximage/tiff/tif_next.c \
    ../../../cximage/tiff/tif_ojpeg.c \
    ../../../cximage/tiff/tif_open.c \
    ../../../cximage/tiff/tif_packbits.c \
    ../../../cximage/tiff/tif_pixarlog.c \
    ../../../cximage/tiff/tif_predict.c \
    ../../../cximage/tiff/tif_print.c \
    ../../../cximage/tiff/tif_read.c \
    ../../../cximage/tiff/tif_strip.c \
    ../../../cximage/tiff/tif_swab.c \
    ../../../cximage/tiff/tif_thunder.c \
    ../../../cximage/tiff/tif_tile.c \
    ../../../cximage/tiff/tif_unix.c \
    ../../../cximage/tiff/tif_version.c \
    ../../../cximage/tiff/tif_warning.c \
    ../../../cximage/tiff/tif_write.c \
    ../../../cximage/tiff/tif_zip.c \
    \
    ../../../cximage/zlib/crc32.c \
    ../../../cximage/zlib/adler32.c \
    ../../../cximage/zlib/deflate.c \
    ../../../cximage/zlib/inffast.c \
    ../../../cximage/zlib/inflate.c \
    ../../../cximage/zlib/inftrees.c \
    ../../../cximage/zlib/trees.c \
    ../../../cximage/zlib/zutil.c \
    ../../../cximage/zlib/uncompr.c \
    ../../../cximage/zlib/compress.c \
    \
    ../../../cximage/CxImage/tif_xfile.cpp \
    ../../../cximage/CxImage/ximabmp.cpp \
    ../../../cximage/CxImage/ximadsp.cpp \
    ../../../cximage/CxImage/ximaenc.cpp \
    ../../../cximage/CxImage/ximaexif.cpp \
    ../../../cximage/CxImage/ximage.cpp \
    ../../../cximage/CxImage/ximagif.cpp \
    ../../../cximage/CxImage/ximahist.cpp \
    ../../../cximage/CxImage/ximaico.cpp \
    ../../../cximage/CxImage/ximainfo.cpp \
    ../../../cximage/CxImage/ximaint.cpp \
    ../../../cximage/CxImage/ximajas.cpp \
    ../../../cximage/CxImage/ximajbg.cpp \
    ../../../cximage/CxImage/ximajpg.cpp \
    ../../../cximage/CxImage/ximalpha.cpp \
    ../../../cximage/CxImage/ximalyr.cpp \
    ../../../cximage/CxImage/ximamng.cpp \
    ../../../cximage/CxImage/ximapal.cpp \
    ../../../cximage/CxImage/ximapcx.cpp \
    ../../../cximage/CxImage/ximapng.cpp \
    ../../../cximage/CxImage/ximapsd.cpp \
    ../../../cximage/CxImage/ximaraw.cpp \
    ../../../cximage/CxImage/ximasel.cpp \
    ../../../cximage/CxImage/ximaska.cpp \
    ../../../cximage/CxImage/ximatga.cpp \
    ../../../cximage/CxImage/ximath.cpp \
    ../../../cximage/CxImage/ximatif.cpp \
    ../../../cximage/CxImage/ximatran.cpp \
    ../../../cximage/CxImage/ximawbmp.cpp \
    ../../../cximage/CxImage/ximawmf.cpp \
    ../../../cximage/CxImage/ximawnd.cpp \
    ../../../cximage/CxImage/xmemfile.cpp \
    ../../../raster/BgraFrame.cpp \
    ../../../raster/Jp2/J2kFile.cpp \
    ../../../raster/Jp2/Reader.cpp \
    ../../../raster/Metafile/Common/MetaFileTypes.cpp \
    ../../../raster/Metafile/Common/MetaFileUtils.cpp \
    ../../../raster/Metafile/Emf/EmfClip.cpp \
    ../../../raster/Metafile/Emf/EmfObjects.cpp \
    ../../../raster/Metafile/Emf/EmfPath.cpp \
    ../../../raster/Metafile/Emf/EmfPlayer.cpp \
    ../../../raster/Metafile/Wmf/WmfClip.cpp \
    ../../../raster/Metafile/Wmf/WmfObjects.cpp \
    ../../../raster/Metafile/Wmf/WmfPlayer.cpp \
    ../../../raster/Metafile/MetaFile.cpp \
    ../../../raster/JBig2/source/JBig2File.cpp \
    ../../../raster/JBig2/source/Encoder/jbig2arith.cpp \
    ../../../raster/JBig2/source/Encoder/jbig2enc.cpp \
    ../../../raster/JBig2/source/Encoder/jbig2sym.cpp \
    ../../../raster/JBig2/source/LeptonLib/adaptmap.cpp \
    ../../../raster/JBig2/source/LeptonLib/affine.cpp \
    ../../../raster/JBig2/source/LeptonLib/affinecompose.cpp \
    ../../../raster/JBig2/source/LeptonLib/arithlow.cpp \
    ../../../raster/JBig2/source/LeptonLib/arrayaccess.cpp \
    ../../../raster/JBig2/source/LeptonLib/bardecode.cpp \
    ../../../raster/JBig2/source/LeptonLib/baseline.cpp \
    ../../../raster/JBig2/source/LeptonLib/bbuffer.cpp \
    ../../../raster/JBig2/source/LeptonLib/bilinear.cpp \
    ../../../raster/JBig2/source/LeptonLib/binarize.cpp \
    ../../../raster/JBig2/source/LeptonLib/binexpand.cpp \
    ../../../raster/JBig2/source/LeptonLib/binexpandlow.cpp \
    ../../../raster/JBig2/source/LeptonLib/binreduce.cpp \
    ../../../raster/JBig2/source/LeptonLib/binreducelow.cpp \
    ../../../raster/JBig2/source/LeptonLib/bmf.cpp \
    ../../../raster/JBig2/source/LeptonLib/bmpio.cpp \
    ../../../raster/JBig2/source/LeptonLib/bmpiostub.cpp \
    ../../../raster/JBig2/source/LeptonLib/boxbasic.cpp \
    ../../../raster/JBig2/source/LeptonLib/boxfunc1.cpp \
    ../../../raster/JBig2/source/LeptonLib/boxfunc2.cpp \
    ../../../raster/JBig2/source/LeptonLib/boxfunc3.cpp \
    ../../../raster/JBig2/source/LeptonLib/ccbord.cpp \
    ../../../raster/JBig2/source/LeptonLib/ccthin.cpp \
    ../../../raster/JBig2/source/LeptonLib/classapp.cpp \
    ../../../raster/JBig2/source/LeptonLib/colorcontent.cpp \
    ../../../raster/JBig2/source/LeptonLib/colormap.cpp \
    ../../../raster/JBig2/source/LeptonLib/colormorph.cpp \
    ../../../raster/JBig2/source/LeptonLib/colorquant1.cpp \
    ../../../raster/JBig2/source/LeptonLib/colorquant2.cpp \
    ../../../raster/JBig2/source/LeptonLib/colorseg.cpp \
    ../../../raster/JBig2/source/LeptonLib/compare.cpp \
    ../../../raster/JBig2/source/LeptonLib/conncomp.cpp \
    ../../../raster/JBig2/source/LeptonLib/convertfiles.cpp \
    ../../../raster/JBig2/source/LeptonLib/convolve.cpp \
    ../../../raster/JBig2/source/LeptonLib/convolvelow.cpp \
    ../../../raster/JBig2/source/LeptonLib/correlscore.cpp \
    ../../../raster/JBig2/source/LeptonLib/dewarp.cpp \
    ../../../raster/JBig2/source/LeptonLib/dwacomb.2.cpp \
    ../../../raster/JBig2/source/LeptonLib/dwacomblow.2.cpp \
    ../../../raster/JBig2/source/LeptonLib/edge.cpp \
    ../../../raster/JBig2/source/LeptonLib/enhance.cpp \
    ../../../raster/JBig2/source/LeptonLib/fhmtauto.cpp \
    ../../../raster/JBig2/source/LeptonLib/fhmtgen.1.cpp \
    ../../../raster/JBig2/source/LeptonLib/fhmtgenlow.1.cpp \
    ../../../raster/JBig2/source/LeptonLib/finditalic.cpp \
    ../../../raster/JBig2/source/LeptonLib/flipdetect.cpp \
    ../../../raster/JBig2/source/LeptonLib/fliphmtgen.cpp \
    ../../../raster/JBig2/source/LeptonLib/fmorphauto.cpp \
    ../../../raster/JBig2/source/LeptonLib/fmorphgen.1.cpp \
    ../../../raster/JBig2/source/LeptonLib/fmorphgenlow.1.cpp \
    ../../../raster/JBig2/source/LeptonLib/fpix1.cpp \
    ../../../raster/JBig2/source/LeptonLib/fpix2.cpp \
    ../../../raster/JBig2/source/LeptonLib/freetype.cpp \
    ../../../raster/JBig2/source/LeptonLib/gifio.cpp \
    ../../../raster/JBig2/source/LeptonLib/gifiostub.cpp \
    ../../../raster/JBig2/source/LeptonLib/gplot.cpp \
    ../../../raster/JBig2/source/LeptonLib/graphics1.cpp \
    ../../../raster/JBig2/source/LeptonLib/graymorph.cpp \
    ../../../raster/JBig2/source/LeptonLib/graymorphlow.cpp \
    ../../../raster/JBig2/source/LeptonLib/grayquant.cpp \
    ../../../raster/JBig2/source/LeptonLib/grayquantlow.cpp \
    ../../../raster/JBig2/source/LeptonLib/heap.cpp \
    ../../../raster/JBig2/source/LeptonLib/jbclass.cpp \
    ../../../raster/JBig2/source/LeptonLib/jpegio.cpp \
    ../../../raster/JBig2/source/LeptonLib/jpegiostub.cpp \
    ../../../raster/JBig2/source/LeptonLib/kernel.cpp \
    ../../../raster/JBig2/source/LeptonLib/list.cpp \
    ../../../raster/JBig2/source/LeptonLib/maze.cpp \
    ../../../raster/JBig2/source/LeptonLib/morph.cpp \
    ../../../raster/JBig2/source/LeptonLib/morphapp.cpp \
    ../../../raster/JBig2/source/LeptonLib/morphdwa.cpp \
    ../../../raster/JBig2/source/LeptonLib/morphseq.cpp \
    ../../../raster/JBig2/source/LeptonLib/numabasic.cpp \
    ../../../raster/JBig2/source/LeptonLib/numafunc1.cpp \
    ../../../raster/JBig2/source/LeptonLib/numafunc2.cpp \
    ../../../raster/JBig2/source/LeptonLib/pageseg.cpp \
    ../../../raster/JBig2/source/LeptonLib/paintcmap.cpp \
    ../../../raster/JBig2/source/LeptonLib/parseprotos.cpp \
    ../../../raster/JBig2/source/LeptonLib/partition.cpp \
    ../../../raster/JBig2/source/LeptonLib/pix1.cpp \
    ../../../raster/JBig2/source/LeptonLib/pix2.cpp \
    ../../../raster/JBig2/source/LeptonLib/pix3.cpp \
    ../../../raster/JBig2/source/LeptonLib/pix4.cpp \
    ../../../raster/JBig2/source/LeptonLib/pix5.cpp \
    ../../../raster/JBig2/source/LeptonLib/pixabasic.cpp \
    ../../../raster/JBig2/source/LeptonLib/pixacc.cpp \
    ../../../raster/JBig2/source/LeptonLib/pixafunc1.cpp \
    ../../../raster/JBig2/source/LeptonLib/pixafunc2.cpp \
    ../../../raster/JBig2/source/LeptonLib/pixalloc.cpp \
    ../../../raster/JBig2/source/LeptonLib/pixarith.cpp \
    ../../../raster/JBig2/source/LeptonLib/pixcomp.cpp \
    ../../../raster/JBig2/source/LeptonLib/pixconv.cpp \
    ../../../raster/JBig2/source/LeptonLib/pixtiling.cpp \
    ../../../raster/JBig2/source/LeptonLib/pngio.cpp \
    ../../../raster/JBig2/source/LeptonLib/pngiostub.cpp \
    ../../../raster/JBig2/source/LeptonLib/pnmio.cpp \
    ../../../raster/JBig2/source/LeptonLib/pnmiostub.cpp \
    ../../../raster/JBig2/source/LeptonLib/projective.cpp \
    ../../../raster/JBig2/source/LeptonLib/psio1.cpp \
    ../../../raster/JBig2/source/LeptonLib/psio1stub.cpp \
    ../../../raster/JBig2/source/LeptonLib/psio2.cpp \
    ../../../raster/JBig2/source/LeptonLib/psio2stub.cpp \
    ../../../raster/JBig2/source/LeptonLib/ptabasic.cpp \
    ../../../raster/JBig2/source/LeptonLib/ptafunc1.cpp \
    ../../../raster/JBig2/source/LeptonLib/ptra.cpp \
    ../../../raster/JBig2/source/LeptonLib/queue.cpp \
    ../../../raster/JBig2/source/LeptonLib/rank.cpp \
    ../../../raster/JBig2/source/LeptonLib/readbarcode.cpp \
    ../../../raster/JBig2/source/LeptonLib/readfile.cpp \
    ../../../raster/JBig2/source/LeptonLib/regutils.cpp \
    ../../../raster/JBig2/source/LeptonLib/rop.cpp \
    ../../../raster/JBig2/source/LeptonLib/ropiplow.cpp \
    ../../../raster/JBig2/source/LeptonLib/roplow.cpp \
    ../../../raster/JBig2/source/LeptonLib/rotate.cpp \
    ../../../raster/JBig2/source/LeptonLib/rotateam.cpp \
    ../../../raster/JBig2/source/LeptonLib/rotateamlow.cpp \
    ../../../raster/JBig2/source/LeptonLib/rotateorth.cpp \
    ../../../raster/JBig2/source/LeptonLib/rotateorthlow.cpp \
    ../../../raster/JBig2/source/LeptonLib/rotateshear.cpp \
    ../../../raster/JBig2/source/LeptonLib/runlength.cpp \
    ../../../raster/JBig2/source/LeptonLib/sarray.cpp \
    ../../../raster/JBig2/source/LeptonLib/scale.cpp \
    ../../../raster/JBig2/source/LeptonLib/scalelow.cpp \
    ../../../raster/JBig2/source/LeptonLib/seedfill.cpp \
    ../../../raster/JBig2/source/LeptonLib/seedfilllow.cpp \
    ../../../raster/JBig2/source/LeptonLib/sel1.cpp \
    ../../../raster/JBig2/source/LeptonLib/sel2.cpp \
    ../../../raster/JBig2/source/LeptonLib/selgen.cpp \
    ../../../raster/JBig2/source/LeptonLib/shear.cpp \
    ../../../raster/JBig2/source/LeptonLib/skew.cpp \
    ../../../raster/JBig2/source/LeptonLib/spixio.cpp \
    ../../../raster/JBig2/source/LeptonLib/stack.cpp \
    ../../../raster/JBig2/source/LeptonLib/sudoku.cpp \
    ../../../raster/JBig2/source/LeptonLib/textops.cpp \
    ../../../raster/JBig2/source/LeptonLib/tiffio.cpp \
    ../../../raster/JBig2/source/LeptonLib/tiffiostub.cpp \
    ../../../raster/JBig2/source/LeptonLib/lepton_utils.cpp \
    ../../../raster/JBig2/source/LeptonLib/viewfiles.cpp \
    ../../../raster/JBig2/source/LeptonLib/warper.cpp \
    ../../../raster/JBig2/source/LeptonLib/watershed.cpp \
    ../../../raster/JBig2/source/LeptonLib/webpio.cpp \
    ../../../raster/JBig2/source/LeptonLib/webpiostub.cpp \
    ../../../raster/JBig2/source/LeptonLib/writefile.cpp \
    ../../../raster/JBig2/source/LeptonLib/zlibmem.cpp \
    ../../../raster/JBig2/source/LeptonLib/zlibmemstub.cpp \
    ../../../raster/ImageFileFormatChecker.cpp \
    ../../../cximage/libpsd/test.c \
    ../../../raster/JBig2/source/LeptonLib/blend1.cpp \
    ../../../raster/Metafile/StarView/SvmClip.cpp \
    ../../../raster/Metafile/StarView/SvmFile.cpp \
    ../../../raster/Metafile/StarView/SvmObjects.cpp \
    ../../../raster/Metafile/StarView/SvmPlayer.cpp

HEADERS += \
    ../../../graphics/AggPlusEnums.h \
    ../../../graphics/aggplustypes.h \
    ../../../graphics/ArrowHead.h \
    ../../../graphics/BaseThread.h \
    ../../../graphics/Brush.h \
    ../../../graphics/Clip.h \
    ../../../graphics/Color.h \
    ../../../graphics/Defines.h \
    ../../../graphics/Graphics.h \
    ../../../graphics/GraphicsPath.h \
    ../../../graphics/GraphicsRenderer.h \
    ../../../graphics/Image.h \
    ../../../graphics/ImageFilesCache.h \
    ../../../graphics/IRenderer.h \
    ../../../graphics/Matrix.h \
    ../../../graphics/structures.h \
    ../../../graphics/TemporaryCS.h \
    ../../../graphics/Timer.h \
    \
    ../../../agg-2.4/include/agg_vcgen_bspline.h \
    ../../../agg-2.4/include/agg_vcgen_contour.h \
    ../../../agg-2.4/include/agg_vcgen_dash.h \
    ../../../agg-2.4/include/agg_vcgen_markers_term.h \
    ../../../agg-2.4/include/agg_vcgen_smooth_poly1.h \
    ../../../agg-2.4/include/agg_vcgen_stroke.h \
    ../../../agg-2.4/include/agg_vcgen_vertex_sequence.h \
    \
    ../../../freetype-2.5.2/include/config/ftconfig.h \
    ../../../freetype-2.5.2/include/config/ftheader.h \
    ../../../freetype-2.5.2/include/config/ftmodule.h \
    ../../../freetype-2.5.2/include/config/ftoption.h \
    ../../../freetype-2.5.2/include/config/ftstdlib.h \
    ../../../freetype-2.5.2/include/ft2build.h \
    \
    ../../../fontengine/ApplicationFonts.h \
    ../../../fontengine/FontFile.h \
    ../../../fontengine/FontManager.h \
    ../../../fontengine/FontPath.h \
    ../../../fontengine/GlyphString.h \
    ../../../fontengine/FontConverter.h \
    \
    ../../../fontengine/fontconverter/Consts.h \
    ../../../fontengine/fontconverter/FontFileBase.h \
    ../../../fontengine/fontconverter/FontFileEncodings.h \
    ../../../fontengine/fontconverter/FontFileTrueType.h \
    ../../../fontengine/fontconverter/FontFileType1.h \
    ../../../fontengine/fontconverter/FontFileType1C.h \
    ../../../fontengine/fontconverter/Hash.h \
    ../../../fontengine/fontconverter/MemoryUtils.h \
    ../../../fontengine/fontconverter/StringExt.h \
    ../../../fontengine/fontconverter/Utils.h \
    \
    ../../../cximage/jasper/bmp/bmp_cod.h \
    ../../../cximage/jasper/bmp/bmp_enc.h \
    ../../../cximage/jasper/jp2/jp2_cod.h \
    ../../../cximage/jasper/jp2/jp2_dec.h \
    ../../../cximage/jasper/jpc/jpc_bs.h \
    ../../../cximage/jasper/jpc/jpc_cod.h \
    ../../../cximage/jasper/jpc/jpc_cs.h \
    ../../../cximage/jasper/jpc/jpc_dec.h \
    ../../../cximage/jasper/jpc/jpc_enc.h \
    ../../../cximage/jasper/jpc/jpc_fix.h \
    ../../../cximage/jasper/jpc/jpc_flt.h \
    ../../../cximage/jasper/jpc/jpc_math.h \
    ../../../cximage/jasper/jpc/jpc_mct.h \
    ../../../cximage/jasper/jpc/jpc_mqcod.h \
    ../../../cximage/jasper/jpc/jpc_mqdec.h \
    ../../../cximage/jasper/jpc/jpc_mqenc.h \
    ../../../cximage/jasper/jpc/jpc_qmfb.h \
    ../../../cximage/jasper/jpc/jpc_t1cod.h \
    ../../../cximage/jasper/jpc/jpc_t1dec.h \
    ../../../cximage/jasper/jpc/jpc_t1enc.h \
    ../../../cximage/jasper/jpc/jpc_t2cod.h \
    ../../../cximage/jasper/jpc/jpc_t2dec.h \
    ../../../cximage/jasper/jpc/jpc_t2enc.h \
    ../../../cximage/jasper/jpc/jpc_tagtree.h \
    ../../../cximage/jasper/jpc/jpc_tsfb.h \
    ../../../cximage/jasper/jpc/jpc_util.h \
    ../../../cximage/jasper/jpg/jpg_cod.h \
    ../../../cximage/jasper/jpg/jpg_enc.h \
    ../../../cximage/jasper/mif/mif_cod.h \
    ../../../cximage/jasper/pgx/pgx_cod.h \
    ../../../cximage/jasper/pgx/pgx_enc.h \
    ../../../cximage/jasper/pnm/pnm_cod.h \
    ../../../cximage/jasper/pnm/pnm_enc.h \
    ../../../cximage/jasper/ras/ras_cod.h \
    ../../../cximage/jasper/ras/ras_enc.h \
    ../../../cximage/jasper/include/jasper/jas_icc.h \
    ../../../cximage/jasper/include/jasper/jas_cm.h \
    ../../../cximage/jasper/include/jasper/jas_image.h \
    \
    ../../../cximage/jbig/jbig.h \
    \
    ../../../cximage/jpeg/transupp.h \
    ../../../cximage/jpeg/jversion.h \
    ../../../cximage/jpeg/jpegint.h \
    ../../../cximage/jpeg/jpeglib.h \
    ../../../cximage/jpeg/jerror.h \
    ../../../cximage/jpeg/jinclude.h \
    ../../../cximage/jpeg/jmemsys.h \
    ../../../cximage/jpeg/jmorecfg.h \
    ../../../cximage/jpeg/jconfig.h \
    ../../../cximage/jpeg/jdct.h \
    ../../../cximage/jpeg/cderror.h \
    ../../../cximage/jpeg/cdjpeg.h \
    \
    ../../../cximage/libpsd/libpsd.h \
    ../../../cximage/libpsd/psd_bitmap.h \
    ../../../cximage/libpsd/psd_blend.h \
    ../../../cximage/libpsd/psd_color.h \
    ../../../cximage/libpsd/psd_config.h \
    ../../../cximage/libpsd/psd_descriptor.h \
    ../../../cximage/libpsd/psd_fixed.h \
    ../../../cximage/libpsd/psd_gradient.h \
    ../../../cximage/libpsd/psd_math.h \
    ../../../cximage/libpsd/psd_rect.h \
    ../../../cximage/libpsd/psd_stream.h \
    ../../../cximage/libpsd/psd_system.h \
    ../../../cximage/libpsd/psd_types.h \
    \
    ../../../cximage/mng/libmng_chunk_descr.h \
    ../../../cximage/mng/libmng_chunk_io.h \
    ../../../cximage/mng/libmng_chunk_prc.h \
    ../../../cximage/mng/libmng_chunks.h \
    ../../../cximage/mng/libmng_cms.h \
    ../../../cximage/mng/libmng_conf.h \
    ../../../cximage/mng/libmng_data.h \
    ../../../cximage/mng/libmng_display.h \
    ../../../cximage/mng/libmng_dither.h \
    ../../../cximage/mng/libmng_error.h \
    ../../../cximage/mng/libmng_filter.h \
    ../../../cximage/mng/libmng_jpeg.h \
    ../../../cximage/mng/libmng_memory.h \
    ../../../cximage/mng/libmng_object_prc.h \
    ../../../cximage/mng/libmng_objects.h \
    ../../../cximage/mng/libmng_pixels.h \
    ../../../cximage/mng/libmng_read.h \
    ../../../cximage/mng/libmng_trace.h \
    ../../../cximage/mng/libmng_types.h \
    ../../../cximage/mng/libmng_write.h \
    ../../../cximage/mng/libmng_zlib.h \
    ../../../cximage/mng/libmng.h \
    \
    ../../../cximage/png/png.h \
    ../../../cximage/png/pngconf.h \
    \
    ../../../cximage/raw/libdcr.h \
    \
    ../../../cximage/tiff/t4.h \
    ../../../cximage/tiff/tif_config.h \
    ../../../cximage/tiff/tif_config.wince.h \
    ../../../cximage/tiff/tif_dir.h \
    ../../../cximage/tiff/tif_fax3.h \
    ../../../cximage/tiff/tif_predict.h \
    ../../../cximage/tiff/tiff.h \
    ../../../cximage/tiff/tiffconf.h \
    ../../../cximage/tiff/tiffconf.wince.h \
    ../../../cximage/tiff/tiffio.h \
    ../../../cximage/tiff/tiffio.hxx \
    ../../../cximage/tiff/tiffiop.h \
    ../../../cximage/tiff/tiffvers.h \
    ../../../cximage/tiff/uvcode.h \
    \
    ../../../cximage/zlib/crc32.h \
    ../../../cximage/zlib/deflate.h \
    ../../../cximage/zlib/inffast.h \
    ../../../cximage/zlib/inflate.h \
    ../../../cximage/zlib/inffixed.h \
    ../../../cximage/zlib/inftrees.h \
    ../../../cximage/zlib/trees.h \
    ../../../cximage/zlib/zconf.h \
    ../../../cximage/zlib/zconf.h.in \
    ../../../cximage/zlib/zlib.h \
    ../../../cximage/zlib/zutil.h \
    \
    ../../../cximage/CxImage/stdint.h \
    ../../../cximage/CxImage/xfile.h \
    ../../../cximage/CxImage/ximabmp.h \
    ../../../cximage/CxImage/ximacfg.h \
    ../../../cximage/CxImage/ximadef.h \
    ../../../cximage/CxImage/ximage.h \
    ../../../cximage/CxImage/ximagif.h \
    ../../../cximage/CxImage/ximaico.h \
    ../../../cximage/CxImage/ximaiter.h \
    ../../../cximage/CxImage/ximajas.h \
    ../../../cximage/CxImage/ximajbg.h \
    ../../../cximage/CxImage/ximamng.h \
    ../../../cximage/CxImage/ximajpg.h \
    ../../../cximage/CxImage/ximapcx.h \
    ../../../cximage/CxImage/ximapng.h \
    ../../../cximage/CxImage/ximapsd.h \
    ../../../cximage/CxImage/ximaraw.h \
    ../../../cximage/CxImage/ximaska.h \
    ../../../cximage/CxImage/ximatga.h \
    ../../../cximage/CxImage/ximath.h \
    ../../../cximage/CxImage/ximatif.h \
    ../../../cximage/CxImage/ximawmf.h \
    ../../../cximage/CxImage/ximawbmp.h \
    ../../../cximage/CxImage/xiofile.h \
    ../../../cximage/CxImage/xmemfile.h \
    ../../../raster/BgraFrame.h \
    ../../../raster/ImageFileFormatChecker.h \
    ../../../raster/Metafile/Common/IOutputDevice.h \
    ../../../raster/Metafile/Common/MetaFile.h \
    ../../../raster/Metafile/Common/MetaFileClip.h \
    ../../../raster/Metafile/Common/MetaFileObjects.h \
    ../../../raster/Metafile/Common/MetaFileRenderer.h \
    ../../../raster/Metafile/Common/MetaFileTypes.h \
    ../../../raster/Metafile/Common/MetaFileUtils.h \
    ../../../raster/Metafile/Emf/EmfClip.h \
    ../../../raster/Metafile/Emf/EmfFile.h \
    ../../../raster/Metafile/Emf/EmfObjects.h \
    ../../../raster/Metafile/Emf/EmfPath.h \
    ../../../raster/Metafile/Emf/EmfPlayer.h \
    ../../../raster/Metafile/Emf/EmfTypes.h \
    ../../../raster/Metafile/Wmf/WmfClip.h \
    ../../../raster/Metafile/Wmf/WmfFile.h \
    ../../../raster/Metafile/Wmf/WmfObjects.h \
    ../../../raster/Metafile/Wmf/WmfPlayer.h \
    ../../../raster/Metafile/Wmf/WmfTypes.h \
    ../../../raster/Metafile/MetaFile.h \
    ../../../raster/JBig2/source/JBig2File.h \
    ../../../raster/JBig2/source/Utils.h \
    ../../../raster/JBig2/source/Encoder/jbig2arith.h \
    ../../../raster/JBig2/source/Encoder/jbig2enc.h \
    ../../../raster/JBig2/source/Encoder/jbig2encoder.h \
    ../../../raster/JBig2/source/Encoder/jbig2segments.h \
    ../../../raster/JBig2/source/Encoder/jbig2structs.h \
    ../../../raster/JBig2/source/Encoder/jbig2sym.h \
    ../../../raster/JBig2/source/LeptonLib/additionaltypes.h \
    ../../../raster/JBig2/source/LeptonLib/allheaders.h \
    ../../../raster/JBig2/source/LeptonLib/alltypes.h \
    ../../../raster/JBig2/source/LeptonLib/array.h \
    ../../../raster/JBig2/source/LeptonLib/arrayaccess.h \
    ../../../raster/JBig2/source/LeptonLib/bbuffer.h \
    ../../../raster/JBig2/source/LeptonLib/bmf.h \
    ../../../raster/JBig2/source/LeptonLib/bmp.h \
    ../../../raster/JBig2/source/LeptonLib/ccbord.h \
    ../../../raster/JBig2/source/LeptonLib/dewarp.h \
    ../../../raster/JBig2/source/LeptonLib/endianness.h \
    ../../../raster/JBig2/source/LeptonLib/environ.h \
    ../../../raster/JBig2/source/LeptonLib/freetype.h \
    ../../../raster/JBig2/source/LeptonLib/funcprotos.h \
    ../../../raster/JBig2/source/LeptonLib/gplot.h \
    ../../../raster/JBig2/source/LeptonLib/heap.h \
    ../../../raster/JBig2/source/LeptonLib/imageio.h \
    ../../../raster/JBig2/source/LeptonLib/jbclass.h \
    ../../../raster/JBig2/source/LeptonLib/list.h \
    ../../../raster/JBig2/source/LeptonLib/morph.h \
    ../../../raster/JBig2/source/LeptonLib/pix.h \
    ../../../raster/JBig2/source/LeptonLib/ptra.h \
    ../../../raster/JBig2/source/LeptonLib/queue.h \
    ../../../raster/JBig2/source/LeptonLib/readbarcode.h \
    ../../../raster/JBig2/source/LeptonLib/regutils.h \
    ../../../raster/JBig2/source/LeptonLib/stack.h \
    ../../../raster/JBig2/source/LeptonLib/sudoku.h \
    ../../../raster/JBig2/source/LeptonLib/watershed.h \
    ../../../raster/Jp2/ArithmeticCoder.h \
    ../../../raster/Jp2/DWT.h \
    ../../../raster/Jp2/Image.h \
    ../../../raster/Jp2/J2k.h \
    ../../../raster/Jp2/J2kFile.h \
    ../../../raster/Jp2/J2kIncludes.h \
    ../../../raster/Jp2/Jp2.h \
    ../../../raster/Jp2/JpgEvent.h \
    ../../../raster/Jp2/Jpt.h \
    ../../../raster/Jp2/Mj2.h \
    ../../../raster/Jp2/PacketIterator.h \
    ../../../raster/Jp2/Raw.h \
    ../../../raster/Jp2/Reader.h \
    ../../../raster/Jp2/Stream.h \
    ../../../raster/Jp2/TagTree.h \
    ../../../raster/Jp2/Tier1.h \
    ../../../raster/Jp2/Tier2.h \
    ../../../raster/Jp2/Tile.h \
    ../../../raster/Jp2/Types.h \
    ../../../raster/Jp2/Utils.h \
    ../../../raster/Metafile/StarView/SvmClip.h \
    ../../../raster/Metafile/StarView/SvmEnums.h \
    ../../../raster/Metafile/StarView/SvmFile.h \
    ../../../raster/Metafile/StarView/SvmObjects.h \
    ../../../raster/Metafile/StarView/SvmPlayer.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

DISTFILES +=
