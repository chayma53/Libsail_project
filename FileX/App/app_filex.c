/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    app_filex.c
  * @author  MCD Application Team
  * @brief   FileX applicative file
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "sail.h"
#include "app_filex.h"
#include "sail_junior.h"
#include "error.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "main.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
SAIL_EXPORT sail_status_t sail_codec_load_init_v7_bmp(struct sail_io *io, const struct sail_load_options *load_options, void **state);
SAIL_EXPORT sail_status_t sail_codec_load_seek_next_frame_v7_bmp(void *state, struct sail_io *io, struct sail_image **image);
SAIL_EXPORT sail_status_t sail_codec_load_frame_v7_bmp(void *state, struct sail_io *io, struct sail_image *image);
SAIL_EXPORT sail_status_t sail_codec_load_finish_v7_bmp(void **state, struct sail_io *io);
SAIL_EXPORT sail_status_t sail_codec_save_init_v7_bmp(struct sail_io *io, const struct sail_save_options *save_options, void **state);
SAIL_EXPORT sail_status_t sail_codec_save_seek_next_frame_v7_bmp(void *state, struct sail_io *io, const struct sail_image *image);
SAIL_EXPORT sail_status_t sail_codec_save_frame_v7_bmp(void *state, struct sail_io *io, const struct sail_image *image);
SAIL_EXPORT sail_status_t sail_codec_save_finish_v7_bmp(void **state, struct sail_io *io);

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
const char * const sail_enabled_codecs[] = {"bmp"};
struct sail_codec_layout_v7 sail_enabled_codecs_layouts = {  sail_codec_load_init_v7_bmp,
															 sail_codec_load_seek_next_frame_v7_bmp,
															 sail_codec_load_frame_v7_bmp,
															 sail_codec_load_finish_v7_bmp,
															 sail_codec_save_init_v7_bmp,
															 sail_codec_save_seek_next_frame_v7_bmp,
															 sail_codec_save_frame_v7_bmp,
															 sail_codec_save_finish_v7_bmp};

const char * const sail_enabled_codecs_info[]={};
//struct sail_codec_layout_v7 const sail_enabled_codecs_layouts[bmp_codec]; //ajouté par mr haithem

extern unsigned char bmp_buffer;
extern unsigned int bmp_buffer_len ;
struct sail_image *fst_bmp;
enum SailStatus check_load_image;
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */
/* Buffer for FileX FX_MEDIA sector cache */
uint32_t media_memory[FX_STM32_SD_DEFAULT_SECTOR_SIZE / sizeof(uint32_t)];

/* Define FileX global data structures.  */
FX_MEDIA        sdio_disk;
FX_FILE         fx_file;
/* Define ThreadX global data structures.  */
TX_THREAD       fx_app_thread;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */
void fx_thread_entry(ULONG thread_input);
void Error_Handler(void);
/* USER CODE END PFP */

/**
  * @brief  Application FileX Initialization.
  * @param memory_ptr: memory pointer
  * @retval int
  */
UINT MX_FileX_Init(VOID *memory_ptr)
{
  UINT ret = FX_SUCCESS;
  TX_BYTE_POOL *byte_pool = (TX_BYTE_POOL*)memory_ptr;

  /* USER CODE BEGIN MX_FileX_MEM_POOL */

  /* USER CODE END MX_FileX_MEM_POOL */

  /* USER CODE BEGIN MX_FileX_Init */
  VOID *pointer;

  /* Allocate memory for the main thread's stack */
  ret = tx_byte_allocate(byte_pool, &pointer, DEFAULT_STACK_SIZE, TX_NO_WAIT);

  if (ret != FX_SUCCESS)
  {
    /* Failed at allocating memory */
    Error_Handler();
  }

  /* Create the main thread.  */
  tx_thread_create(&fx_app_thread, "FileX App Thread", fx_thread_entry, 0, pointer, DEFAULT_STACK_SIZE,
                   DEFAULT_THREAD_PRIO, DEFAULT_PREEMPTION_THRESHOLD, TX_NO_TIME_SLICE, TX_AUTO_START);

  /* Initialize FileX.  */
  fx_system_initialize();

  /* USER CODE END MX_FileX_Init */
  return ret;
}

/* USER CODE BEGIN 1 */

void fx_thread_entry(ULONG thread_input)
{
/* UINT status;
  ULONG bytes_read;
  CHAR read_buffer[32];
  CHAR data[] = "This is FileX working on STM32";*/
  //sail_load_image_from_memory((const void *)bmp_buffer, bmp_buffer_len, &image_bmp);
	UINT check_load_image=SAIL_OK;

	check_load_image = sail_load_image_from_memory(bmp_buffer, bmp_buffer_len, &fst_bmp);
	if(check_load_image != SAIL_OK)
	{
		Error_Handler();

	}

	  printf("Size: %ux%u, bytes per line: %u, "
	         "pixel format: %s, pixels: %p\n",
			 fst_bmp->width,
			 fst_bmp->height,
			 fst_bmp->bytes_per_line,
	         sail_pixel_format_to_string(fst_bmp->pixel_format),
			 fst_bmp->pixels);

	  sail_destroy_image(fst_bmp);

  /* Open the SD disk driver.  */
#if 0
  status =  fx_media_open(&sdio_disk, "STM32_SDIO_DISK", fx_stm32_sd_driver, 0,(VOID *) media_memory, sizeof(media_memory));

  /* Check the media open status.  */
  if (status != FX_SUCCESS)
  {
    Error_Handler();
  }

  /* Create a file called STM32.TXT in the root directory.  */
  status =  fx_file_create(&sdio_disk, "STM32.TXT");

  /* Check the create status.  */
  if (status != FX_SUCCESS)
  {
    /* Check for an already created status. This is expected on the
    second pass of this loop!  */
    if (status != FX_ALREADY_CREATED)
    {
      /* Create error, call error handler.  */
      Error_Handler();
    }
  }

  /* Open the test file.  */
  status =  fx_file_open(&sdio_disk, &fx_file, "STM32.TXT", FX_OPEN_FOR_WRITE);

  /* Check the file open status.  */
  if (status != FX_SUCCESS)
  {
    /* Error opening file, call error handler.  */
    Error_Handler();
  }

  /* Seek to the beginning of the test file.  */
  status =  fx_file_seek(&fx_file, 0);

  /* Check the file seek status.  */
  if (status != FX_SUCCESS)
  {
    /* Error performing file seek, call error handler.  */
    Error_Handler();
  }

  /* Write a string to the test file.  */
  status =  fx_file_write(&fx_file, data, sizeof(data));

  /* Check the file write status.  */
  if (status != FX_SUCCESS)
  {
    /* Error writing to a file, call error handler.  */
    Error_Handler();
  }

  /* Close the test file.  */
  status =  fx_file_close(&fx_file);

  /* Check the file close status.  */
  if (status != FX_SUCCESS)
  {
    /* Error closing the file, call error handler.  */
    Error_Handler();
  }

  status = fx_media_flush(&sdio_disk);

  /* Check the media flush  status.  */
  if (status != FX_SUCCESS)
  {
    /* Error closing the file, call error handler.  */
    Error_Handler();
  }

  /* Open the test file.  */
  status =  fx_file_open(&sdio_disk, &fx_file, "STM32.TXT", FX_OPEN_FOR_READ);

  /* Check the file open status.  */
  if (status != FX_SUCCESS)
  {
    /* Error opening file, call error handler.  */
    Error_Handler();
  }

  /* Seek to the beginning of the test file.  */
  status =  fx_file_seek(&fx_file, 0);

  /* Check the file seek status.  */
  if (status != FX_SUCCESS)
  {
    /* Error performing file seek, call error handler.  */
    Error_Handler();
  }

  /* Read the first 28 bytes of the test file.  */
  status =  fx_file_read(&fx_file, read_buffer, sizeof(data), &bytes_read);

  /* Check the file read status.  */
  if ((status != FX_SUCCESS) || (bytes_read != sizeof(data)))
  {
    /* Error reading file, call error handler.  */
    Error_Handler();
  }

  /* Close the test file.  */
  status =  fx_file_close(&fx_file);

  /* Check the file close status.  */
  if (status != FX_SUCCESS)
  {
    /* Error closing the file, call error handler.  */
    Error_Handler();
  }

  /* Close the media.  */
  status =  fx_media_close(&sdio_disk);

  /* Check the media close status.  */
  if (status != FX_SUCCESS)
  {
    /* Error closing the media, call error handler.  */
    Error_Handler();
  }

  /* Loop Forever indicating success state */
  while(1)
  {
    BSP_LED_Toggle(LED_GREEN);
    tx_thread_sleep(50);
  }
#endif
}

/* USER CODE END 1 */
